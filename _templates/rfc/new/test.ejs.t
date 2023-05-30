---
to: "<%= common ? `src/common/components/${Name}/index.test.tsx` : `${cwd}/components/${Name}/index.test.tsx` %>"
---
import React from 'react';
import { render } from '@testing-library/react';
import <%= Name %> from '.';

describe('<%= Name %>', () => {
  it('exists', () => {
    expect(<%= Name %>).toBeDefined();
  });

  it ('renders', () => {
    render(<<%= Name %> />);
  });
});
