.class public Lcom/samsung/android/settings/lockscreen/OwnerInfo;
.super Landroid/app/DialogFragment;
.source "OwnerInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/OwnerInfo$DialogFragmentListener;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field private static OWNER_INFO:I

.field private static OWNER_INFO_CANCEL_BUTTON:I

.field private static OWNER_INFO_DONE_BUTTON:I


# instance fields
.field context:Landroid/content/Context;

.field private info:Ljava/lang/String;

.field isFromUnlock:Z

.field private listener:Lcom/samsung/android/settings/lockscreen/OwnerInfo$DialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNickname:Landroid/widget/EditText;

.field private mOwnerInfo:Landroid/widget/EditText;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShowNickname:Z

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 403
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 401
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x41

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 169
    .local v2, "res":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    .line 170
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 173
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    .line 175
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f110501

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mScrollView:Landroid/widget/ScrollView;

    .line 177
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f110504

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    .line 178
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f1102b6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mErrorTextView:Landroid/widget/TextView;

    .line 179
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f0b08f5

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 184
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f110502

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "input_text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "ownerInfoInputText":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 192
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 195
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->isFromUnlock:Z

    if-eqz v3, :cond_4

    .line 199
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    const-string/jumbo v4, "inputType=option"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 201
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 203
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f110503

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    .line 204
    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mShowNickname:Z

    if-nez v3, :cond_9

    .line 205
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 210
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 211
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_6

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 213
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f0b123f

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 218
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/samsung/android/settings/lockscreen/OwnerInfo$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$2;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    .line 167
    return-void

    .line 170
    .end local v0    # "enabled":Z
    .end local v1    # "ownerInfoInputText":Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 171
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    goto/16 :goto_0

    .line 189
    .restart local v0    # "enabled":Z
    .restart local v1    # "ownerInfoInputText":Ljava/lang/String;
    :cond_8
    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    goto/16 :goto_1

    .line 207
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelected(Z)V

    goto :goto_2

    .line 215
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f0b0cdd

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_3
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/lockscreen/OwnerInfo;
    .locals 3
    .param p0, "title"    # I

    .prologue
    .line 90
    new-instance v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;-><init>()V

    .line 91
    .local v1, "frag":Lcom/samsung/android/settings/lockscreen/OwnerInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/samsung/android/settings/lockscreen/OwnerInfo;
    .locals 3
    .param p0, "title"    # I
    .param p1, "inputText"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;-><init>()V

    .line 100
    .local v1, "frag":Lcom/samsung/android/settings/lockscreen/OwnerInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v2, "input_text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->setArguments(Landroid/os/Bundle;)V

    .line 104
    return-object v1
.end method

.method private showInputMethod()V
    .locals 6

    .prologue
    .line 231
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 234
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    .line 249
    const-wide/16 v4, 0x190

    .line 234
    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    return-void

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 258
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 351
    packed-switch p2, :pswitch_data_0

    .line 350
    :goto_0
    return-void

    .line 353
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->listener:Lcom/samsung/android/settings/lockscreen/OwnerInfo$DialogFragmentListener;

    instance-of v1, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    if-eqz v1, :cond_3

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->saveChanges()V

    .line 355
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    sget v5, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 356
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->listener:Lcom/samsung/android/settings/lockscreen/OwnerInfo$DialogFragmentListener;

    invoke-interface {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$DialogFragmentListener;->onPositiveClick()V

    .line 364
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->hideSoftInput()V

    .line 366
    sget-boolean v1, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 368
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->context:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "OWST"

    const/16 v5, 0x3e8

    invoke-static {v1, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 375
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 377
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Configure the unlock banner : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    .line 376
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_DONE_BUTTON:I

    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_DONE_BUTTON:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 358
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->saveChanges()V

    .line 359
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, "info":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v2

    :goto_3
    sget v5, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/16 v5, 0xc8

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6, v4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    move v1, v3

    .line 360
    goto :goto_3

    .line 370
    .end local v7    # "info":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->context:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "OWST"

    invoke-static {v1, v4, v5, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 385
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->hideSoftInput()V

    .line 386
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_CANCEL_BUTTON:I

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_CANCEL_BUTTON:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    .line 265
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 120
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "show_nickname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string/jumbo v2, "show_nickname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mShowNickname:Z

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->context:Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 125
    .local v1, "intent":Landroid/content/Intent;
    iput-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->isFromUnlock:Z

    .line 126
    const-string/jumbo v2, "direct_lockscren"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->isFromUnlock:Z

    .line 117
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401b8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    .line 140
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 141
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->initView(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, "titleRes":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const v0, 0x7f0b123e

    .line 147
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    .line 147
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 150
    const v2, 0x7f0b1939

    .line 147
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 151
    const/high16 v2, 0x1040000

    .line 147
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    .line 154
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 164
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->hideSoftInput()V

    .line 398
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 396
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 275
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "content://com.sec.knox.provider2/MiscPolicy"

    const-string/jumbo v3, "getCurrentLockScreenString"

    invoke-static {v1, v2, v3, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "getCurrentLockScreenString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 282
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 283
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const-string/jumbo v1, "OwnerInfoSettings"

    const-string/jumbo v2, "onResume() : OwnerInfo has updated by MDM admin."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO:I

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 274
    return-void

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    goto :goto_0
.end method

.method saveChanges()V
    .locals 7

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 407
    .local v3, "res":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "info":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 409
    iget-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mShowNickname:Z

    if-eqz v4, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "oldName":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 412
    .local v1, "newName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    .end local v1    # "newName":Ljava/lang/CharSequence;
    .end local v2    # "oldName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 413
    .restart local v1    # "newName":Ljava/lang/CharSequence;
    .restart local v2    # "oldName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 414
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 413
    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    goto :goto_0
.end method
