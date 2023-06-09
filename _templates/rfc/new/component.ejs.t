---
to: "<%= common ? `src/common/components/${Name}/index.tsx` : `${cwd}/components/${Name}/index.tsx` %>"
---
import React from 'react';
<% if (jss) { -%>
import { createUseStyles } from 'react-jss';
<% } -%>

type <%= Name %>Props = {};

<% if (jss) { -%>
<%- include(`${templates}/include/usestyles.ejs.t`); -%>
<% } -%>

function <%= Name %>(props: <%= Name %>Props ) {
  const classes = useStyles();
  
  // FIXME: make sure you remove this
  console.table(props);

  return (
    <div className={classes.root} />
  );
};

<% if (memo) { -%>
export default React.memo(<%= Name %>);
<% } else { -%>
export default <%= Name %>;
<% } %> 
