.class public Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;
.source "DisabledDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageEnableChecker:Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->mPackageName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->mPackageEnableChecker:Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onCreate(Landroid/os/Bundle;)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->dismissAllowingStateLoss()V

    .line 48
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    .line 56
    .local v3, "ret":Landroid/app/Dialog;
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->setCancelable(Z)V

    .line 57
    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 59
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/common/update/AppMarketUpdateUtils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "appName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0a0294

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->getMessage()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0a0292

    .line 63
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object v1

    .line 67
    .local v1, "negBtn":Landroid/widget/Button;
    const v4, 0x7f0a0304

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 68
    new-instance v4, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v2

    .line 76
    .local v2, "posBtn":Landroid/widget/Button;
    const v4, 0x7f0a0293

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 77
    new-instance v4, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;-><init>(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-object v3
.end method

.method public setOnEnableStatusListener(Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;)V
    .locals 0
    .param p1, "checker"    # Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->mPackageEnableChecker:Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;

    .line 40
    return-void
.end method
