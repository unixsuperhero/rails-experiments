
# Practicing Vim Lookahead and Lookbehind RegEx Operators

Lookahead and lookbehind regex operators in vim don't behave the way I expect
them to.  Also, most examples online don't actually work or explain them
properly.  Therefore, I will practice and document the results for future
reference.

### What are Lookaround Operators

Regular expressions let you say, "starting at the current match's pointer,
looking forward I should/should not find this other pattern".

Said another way, let's say you want to find all opening html tags that have
the closing tag on the same line.  You might think that you can do this:

    <([^/]\w*)(</\1)\@=

Let me explain _why_ you might think this.  The lookahead operator in vim is
__\@=__.  It takes whatever atom preceeds it (in this case a group with </ and
the tag name).

If you think this reads as, match an opening tag that has a matching
closing tag somewhere after it.  __You're wrong.__

It actually reads, match an opening tag immediately followed by the matching
closing tag.

The difference is that the current match's pointer affects the lookahead
operator.

If you want to do an accurate lookahead, you have to tell vim how far to look.
In this case, as far ahead as possible:

    <([^/]\w*)(.*</\1)\@=

That's right, 2 characters made all the difference.  By adding _.*_ inside the
lookahead group, we are saying, "the match is successful if there is a matching
closing tag anywhere from this point on".

