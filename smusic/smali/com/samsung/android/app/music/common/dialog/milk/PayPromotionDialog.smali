.class public Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;
.super Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
.source "PayPromotionDialog.java"


# static fields
.field protected static final KEY_MESSAGE:Ljava/lang/String; = "key_message"

.field protected static final KEY_TITLE:Ljava/lang/String; = "key_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;-><init>()V

    .line 23
    .local v1, "f":Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v2, "key_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->setArguments(Landroid/os/Bundle;)V

    .line 27
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0146

    new-instance v6, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)V

    .line 33
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a008a

    new-instance v6, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)V

    .line 34
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a02a9

    new-instance v6, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NeturalButtonClickAdapter;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NeturalButtonClickAdapter;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)V

    .line 35
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 38
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key_title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 40
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key_message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 48
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog$1;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 75
    return-object v1
.end method
