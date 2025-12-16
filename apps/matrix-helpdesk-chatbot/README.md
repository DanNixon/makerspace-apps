# Matrix Helpdesk Chatbot

Answers your Maker Space related questions, so people do not have to.

Will respond in any room it is in (including DMs) and will automatically accept any room or DM invites.

Uses [matrix-openrouter-helpdesk](https://github.com/DanNixon/matrix-openrouter-helpdesk), with web enabled [`gpt-5-nano`](https://openrouter.ai/openai/gpt-5-nano).

The system prompts is:

```text
Using only information taken from https://makerspace.org.uk and https://wiki.makerspace.org.uk, answer the user's question about Maker Space. Do not offer follow up options, end communication once you have provided the information. When answering, you may refer to Maker Space as 'we'. If you cannot find appropriate information to answer the question, suggest the user asks other members and updates the wiki once they find the answer.
```

Don't take the piss.
