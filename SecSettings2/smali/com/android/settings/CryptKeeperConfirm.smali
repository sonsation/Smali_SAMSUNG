.class public Lcom/android/settings/CryptKeeperConfirm;
.super Lcom/android/settings/InstrumentedFragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeperConfirm$1;,
        Lcom/android/settings/CryptKeeperConfirm$2;,
        Lcom/android/settings/CryptKeeperConfirm$Blank;
    }
.end annotation


# static fields
.field private static utils:Lcom/android/internal/widget/LockPatternUtils;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFastEncryptionChecker:Landroid/view/View$OnClickListener;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    sget-object v0, Lcom/android/settings/CryptKeeperConfirm;->utils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/CryptKeeperConfirm;->utils:Lcom/android/internal/widget/LockPatternUtils;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 137
    new-instance v0, Lcom/android/settings/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperConfirm$1;-><init>(Lcom/android/settings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lcom/android/settings/CryptKeeperConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperConfirm$2;-><init>(Lcom/android/settings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFastEncryptionChecker:Landroid/view/View$OnClickListener;

    .line 56
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f1101fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x21

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 210
    const v4, 0x7f040089

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    .line 213
    iget-object v4, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v5, 0x7f1101fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 214
    .local v0, "fastEncryption":Landroid/widget/CheckBox;
    sget-object v4, Lcom/android/settings/CryptKeeperConfirm;->utils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v4, :cond_0

    .line 215
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/settings/CryptKeeperConfirm;->utils:Lcom/android/internal/widget/LockPatternUtils;

    .line 219
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "false"

    aput-object v4, v2, v8

    .line 220
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 221
    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy1"

    .line 222
    const-string/jumbo v6, "isFastEncryptionAllowed"

    .line 220
    invoke-static {v4, v5, v6, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 223
    .local v1, "isFastEncryption":I
    if-eqz v0, :cond_1

    .line 224
    if-ne v1, v7, :cond_2

    .line 225
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 227
    const-string/jumbo v4, "sys.sec_device_encryption"

    const-string/jumbo v5, "fast"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0638

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b0639

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CryptKeeperConfirm;->establishFinalConfirmationState()V

    .line 237
    iget-object v4, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object v4

    .line 229
    :cond_2
    iget-object v4, p0, Lcom/android/settings/CryptKeeperConfirm;->mFastEncryptionChecker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
