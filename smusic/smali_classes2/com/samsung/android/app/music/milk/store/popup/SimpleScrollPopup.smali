.class public Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "SimpleScrollPopup.java"


# static fields
.field protected static final KEY_MESSAGE:Ljava/lang/String; = "key_message"

.field protected static final KEY_TITLE:Ljava/lang/String; = "key_title"

.field private static final TAG:Ljava/lang/String; = "SimpleScrollPopup"


# instance fields
.field protected mCustomContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    return-void
.end method

.method protected static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v1, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;-><init>()V

    .line 25
    .local v1, "popup":Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v2, "key_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->setArguments(Landroid/os/Bundle;)V

    .line 29
    return-object v1
.end method

.method public static showDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const-string v1, "SimpleScrollPopup"

    const-string/jumbo v2, "showDialog : manager is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;

    move-result-object v0

    .line 38
    .local v0, "popup":Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;
    const-string v1, "SimpleScrollPopup"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected addCustomView(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->mCustomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 76
    return-void
.end method

.method protected getHorizontalMargin(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0684

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f040181

    return v0
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 6
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDialogCreated(Landroid/app/Dialog;)V

    .line 50
    const v4, 0x7f1200b8

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 51
    .local v3, "titleTextView":Landroid/widget/TextView;
    const v4, 0x7f120417

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    .local v1, "messageTextView":Landroid/widget/TextView;
    const v4, 0x7f120459

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->mCustomContainer:Landroid/view/ViewGroup;

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key_title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key_message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v4, 0x7f12027b

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
