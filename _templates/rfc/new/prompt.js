module.exports = [
  {
    type: 'confirm',
    name: 'common',
    message: 'Is this a common component?',
    default: true,
  },
  {
    type: 'confirm',
    name: 'story',
    message: 'Create a Story for this component?',
    default: false,
  },
  {
    type: 'confirm',
    name: 'jss',
    message: "useStyles with with component?",
    default: true,
  },  
  {
    type: 'confirm',
    name: 'memo',
    message: 'Memoize this component?',
    default: true,
  }
]
