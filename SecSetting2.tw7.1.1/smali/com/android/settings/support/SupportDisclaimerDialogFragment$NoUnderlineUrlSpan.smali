.class public Lcom/android/settings/support/SupportDisclaimerDialogFragment$NoUnderlineUrlSpan;
.super Landroid/text/style/URLSpan;
.source "SupportDisclaimerDialogFragment.java"


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 130
    return-void
.end method
