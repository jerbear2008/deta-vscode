'use strict'

import * as vscode from 'vscode'
import { MemFS } from './memfs'
import { DetaFS } from './detafs'

export function activate(context: vscode.ExtensionContext) {
  console.log('MemFS/DetaFS says "Hello"')

  const memFs = new MemFS()
  context.subscriptions.push(
    vscode.workspace.registerFileSystemProvider('browser', memFs, {
      isCaseSensitive: true,
    })
  )

  const detaFs = new DetaFS()
  context.subscriptions.push(
    vscode.workspace.registerFileSystemProvider('deta', detaFs, {
      isCaseSensitive: true,
    })
  )

  context.subscriptions.push(
    vscode.commands.registerCommand('browser.clear', (_) => {
      for (const [name] of memFs.readDirectory(vscode.Uri.parse('browser:/'))) {
        memFs.delete(vscode.Uri.parse(`browser:/${name}`))
      }
    })
  )

  vscode.workspace.updateWorkspaceFolders(
    0,
    0,
    {
      uri: vscode.Uri.parse('browser:/'),
      name: 'Browser',
    },
    {
      uri: vscode.Uri.parse('deta:/'),
      name: 'Deta',
    }
  )

  context.subscriptions.push(
    vscode.commands.registerCommand('browser.workspaceInit', (_) => {
      vscode.workspace.updateWorkspaceFolders(
        0,
        0,
        {
          uri: vscode.Uri.parse('browser:/'),
          name: 'Browser',
        },
        {
          uri: vscode.Uri.parse('deta:/'),
          name: 'Deta',
        }
      )
    })
  )
}