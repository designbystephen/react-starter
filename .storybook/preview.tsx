import React from 'react';
import { Preview } from '@storybook/react';
/* Add baseline styles to all components
  import Baseline from '../src/common/styles/Baseline';
  import '../src/common/styles/baseline.css';
*/

const preview: Preview = {
  decorators: [
    (Story) => (
      <>
        {/* 👇 optional if you want to render all stories with a theme or baseline styles */}
        {/* <Baseline /> */}
        {/* 👇 Decorators in Storybook also accept a function. Replace <Story/> with Story() to enable it  */}
        <Story />
      </>
    ),
  ],
  parameters: {
    actions: { argTypesRegex: '^on[A-Z].*' },
    controls: {
      matchers: {
        color: /(background|color)$/i,
        date: /Date$/,
      },
    },
  },
};

export default preview;
