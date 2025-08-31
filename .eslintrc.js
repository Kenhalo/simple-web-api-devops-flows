module.exports = {
  env: {
    node: true,
    es2021: true,
    jest: true
  },
  extends: ['eslint:recommended'],
  parserOptions: {
    ecmaVersion: 12
  },
  rules: {
    'no-unused-vars': 'error',
    'no-console': 'off',
    'indent': ['error', 2],
    'semi': ['error', 'always']
  }
};