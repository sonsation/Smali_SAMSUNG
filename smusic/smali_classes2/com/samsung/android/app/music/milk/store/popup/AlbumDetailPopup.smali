.class public Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;
.super Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;
.source "AlbumDetailPopup.java"


# static fields
.field private static final KEY_DISTRIBUTED_BY:Ljava/lang/String; = "key_distribued_by"

.field private static final KEY_LABEL:Ljava/lang/String; = "key_label"

.field private static final TAG:Ljava/lang/String; = "AlbumDetailPopup"


# instance fields
.field mDiscription:Ljava/lang/String;

.field mDistributedBy:Ljava/lang/String;

.field mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;-><init>()V

    return-void
.end method

.method protected static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "distributedBy"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v1, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;-><init>()V

    .line 31
    .local v1, "popup":Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "key_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v2, "key_label"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "key_distribued_by"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method

.method public static showDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "distributedBy"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const-string v2, "AlbumDetailPopup"

    const-string/jumbo v3, "showDialog : manager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v2, "AlbumDetailPopup"

    invoke-virtual {p0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 48
    .local v1, "preexistence":Landroid/app/Fragment;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;

    if-eqz v2, :cond_1

    .line 49
    const-string v2, "AlbumDetailPopup"

    const-string/jumbo v3, "showDialog : Already showing"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;

    move-result-object v0

    .line 54
    .local v0, "popup":Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;
    const-string v2, "AlbumDetailPopup"

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 14
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/16 v13, 0x8

    const/4 v12, -0x1

    .line 59
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->onDialogCreated(Landroid/app/Dialog;)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "key_label"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->mLabel:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "key_distribued_by"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->mDistributedBy:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "key_message"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->mDiscription:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f04017f

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "customView":Landroid/view/View;
    const v9, 0x7f120450

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, "labelContainer":Landroid/view/View;
    const v9, 0x7f120452

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "distributedContainer":Landroid/view/View;
    const v9, 0x7f120454

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 72
    .local v2, "emptyDiscriptionContainer":Landroid/view/View;
    const/4 v4, 0x0

    .line 73
    .local v4, "showCustomView":Z
    const/4 v5, 0x0

    .line 75
    .local v5, "showEmptyDiscriptionView":Z
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->mLabel:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 76
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->mDistributedBy:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 84
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->mDiscription:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 92
    const/4 v4, 0x1

    .line 93
    const/4 v5, 0x1

    .line 94
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 96
    const v9, 0x7f120455

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 97
    .local v8, "txtNoDiscription":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a03a7

    .line 98
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 97
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .end local v8    # "txtNoDiscription":Landroid/widget/TextView;
    :goto_2
    if-eqz v4, :cond_0

    .line 105
    if-eqz v5, :cond_4

    .line 106
    invoke-virtual {p0, v0, v12, v12}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->addCustomView(Landroid/view/View;II)V

    .line 113
    :cond_0
    :goto_3
    return-void

    .line 78
    :cond_1
    const/4 v4, 0x1

    .line 79
    const v9, 0x7f120451

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 80
    .local v7, "txtLabel":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    .end local v7    # "txtLabel":Landroid/widget/TextView;
    :cond_2
    const/4 v4, 0x1

    .line 87
    const v9, 0x7f120453

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 88
    .local v6, "txtDistributedBy":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->mDistributedBy:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 100
    .end local v6    # "txtDistributedBy":Landroid/widget/TextView;
    :cond_3
    const/4 v5, 0x0

    .line 101
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 109
    :cond_4
    const/4 v9, -0x2

    invoke-virtual {p0, v0, v12, v9}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->addCustomView(Landroid/view/View;II)V

    goto :goto_3
.end method
