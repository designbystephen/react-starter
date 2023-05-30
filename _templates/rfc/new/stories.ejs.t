---
to: "<%= common ? `src/common/components/${Name}/index.stories.tsx` : `${cwd}/components/${Name}/index.stories.tsx` %>"
skip_if: <%= !story %>
---
import React from 'react';
import { Meta , StoryFn } from '@storybook/react';
import <%= Name %> from '.';

export default {
  /* 👇 The title prop is optional.
  * See https://storybook.js.org/docs/react/configure/overview#configure-story-loading
  * to learn how to generate automatic titles
  */
  title: '<%= Name %>',
  component: <%= Name %>,
} as Meta <typeof <%= Name %>>;

const Template: StoryFn<typeof <%= Name %>> = (args) => <<%= Name %> {...args} />;

export const Default = Template.bind({});

Default.args = {
};
