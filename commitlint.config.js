module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    'body-leading-blank': [2, 'always'],
    'footer-leading-blank': [1, 'always'],
    'header-max-length': [2, 'always', 108],
    'subject-empty': [2, 'never'],
    'type-empty': [2, 'never'],
    'type-enum': [
      2, // type必须输入
      'always',
      [
        'feat', // 新功能 
        'fix', // 修复bug 
        'style', // 修改格式，删除代码空格、缩进等
        'docs', // 文档、注释修改
        'refactor', // 代码重构，没有功能修改
        'merge',  // 代码合并
        'revert',  // 版本回滚
        'chore', // 构建过程或辅助工具的变动
        'test',
        'perf',
        'build',
        'ci',
        'revert',
        'wip',
        'workflow',
        'types',
        'release',
      ]
    ]
  }
}
