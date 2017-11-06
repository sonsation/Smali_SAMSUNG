.class public Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;
.super Landroid/app/DialogFragment;
.source "BillingUpdateProgress.java"


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mTextView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 31
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mApplicationContext:Landroid/content/Context;

    .line 32
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040029

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 34
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f120102

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mTextView:Landroid/widget/TextView;

    .line 35
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 36
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 41
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 42
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->setCancelable(Z)V

    .line 44
    return-object v2
.end method

.method public setText(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mTitle:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 48
    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mTitle:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
