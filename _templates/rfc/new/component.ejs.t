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

  return ();
};

<% if (memo) { -%>
export default React.memo(<%= Name %>);
<% } else { -%>
export default <%= Name %>;
<% } %> 
