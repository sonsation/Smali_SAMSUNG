.class public Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;
.source "EmergencyNoticeDialog.java"


# static fields
.field private static final TYPE_BASIC:Ljava/lang/String; = "1"

.field private static final TYPE_MORE:Ljava/lang/String; = "2"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 23
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 24
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 25
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TITLE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->mTitle:Ljava/lang/String;

    .line 26
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->MESSAGE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->mMessage:Ljava/lang/String;

    .line 27
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TYPE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->mType:Ljava/lang/String;

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->getMessage()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v3

    .line 34
    .local v3, "posBtn":Landroid/widget/Button;
    const v4, 0x7f0a040e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 35
    new-instance v4, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-string v4, "2"

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v2

    .line 45
    .local v2, "moreBtn":Landroid/widget/Button;
    const v4, 0x7f0a0291

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 46
    new-instance v4, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog$2;-><init>(Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .end local v2    # "moreBtn":Landroid/widget/Button;
    :goto_0
    return-object v1

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
