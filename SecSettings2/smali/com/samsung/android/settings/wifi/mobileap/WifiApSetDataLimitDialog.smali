.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;
.super Landroid/app/AlertDialog;
.source "WifiApSetDataLimitDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;
    }
.end annotation


# instance fields
.field dataWatcher:Landroid/text/TextWatcher;

.field private mApDataLimit:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

.field private mButtonOk:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEtDataLimit:Landroid/widget/EditText;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTvDataLength:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mTvDataLength:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->validate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apdatalimit"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->dataWatcher:Landroid/text/TextWatcher;

    .line 46
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mApDataLimit:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    .line 47
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 48
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    :cond_1
    return-void
.end method


# virtual methods
.method public getInputLimitData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04034c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->setView(Landroid/view/View;)V

    .line 55
    const v1, 0x7f0b173a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->setTitle(I)V

    .line 57
    const v1, 0x7f1107ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    .line 58
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->dataWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    const v1, 0x7f1107b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mTvDataLength:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b14b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b121f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x3

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mApDataLimit:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->isApDataLimited()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mApDataLimit:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->getApDataLimitValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0e38

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->validate()V

    .line 52
    return-void
.end method
