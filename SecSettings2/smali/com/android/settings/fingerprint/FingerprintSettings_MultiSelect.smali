.class public Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;,
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;,
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;,
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;
    }
.end annotation


# static fields
.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static mSalesCode:Ljava/lang/String;

.field private static selectedId:I


# instance fields
.field TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

.field private actionBar:Landroid/app/ActionBar;

.field checkBoxRunnable:Ljava/lang/Runnable;

.field private isKeepEnrollSession:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAllDialog:Landroid/app/AlertDialog;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mEnrolledFingerCount:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRegisterCategory:Landroid/preference/PreferenceCategory;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectedFingerprintTextView:Landroid/widget/TextView;

.field private mUserId:I

.field private originalContentStart:I

.field private selectionChecklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private twselectedChecklist:[Z

.field private twselectionChecklist:[Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    return-object p1
.end method

.method static synthetic -set3(I)I
    .locals 0

    sput p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 1
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)Z
    .locals 1
    .param p1, "isResetFeature"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintOperation(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->copyTwselectionChecklist()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintSequentially()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishSelectMode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;ZI)V
    .locals 0
    .param p1, "val"    # Z
    .param p2, "position"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTwselectionChecklist(ZI)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwChecklist(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwMultiSelected()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSalesCode:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    .line 142
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 94
    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 97
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    .line 99
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    .line 100
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    .line 101
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 102
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 103
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    .line 109
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    .line 110
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 111
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 115
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    .line 117
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    .line 145
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 222
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    .line 417
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    .line 696
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    .line 88
    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2
    .param p1, "isSelect"    # Z

    .prologue
    .line 1637
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1638
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1641
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    .line 1635
    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 9
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 594
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 595
    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 597
    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 599
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 600
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_2

    .line 604
    move v2, v0

    .line 605
    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-le v5, v4, :cond_1

    .line 607
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 608
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 609
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 603
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    .end local v2    # "j":I
    :cond_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 614
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 616
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 617
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 618
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 623
    :cond_3
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 626
    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_4

    .line 627
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 628
    .local v1, "item":Landroid/hardware/fingerprint/Fingerprint;
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addFingerprintItemPreferences : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 631
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_7

    .line 632
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 634
    .restart local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Finger "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 635
    .local v3, "pref":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_5

    .line 636
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->genKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 640
    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 643
    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 644
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addCheckedList(Landroid/preference/CheckBoxPreference;)V

    .line 631
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 652
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_6
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 653
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 2"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .end local v0    # "i":I
    :cond_7
    :goto_4
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .restart local v0    # "i":I
    :goto_5
    const/4 v4, 0x4

    if-ge v0, v4, :cond_a

    .line 661
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Finger "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 662
    .restart local v3    # "pref":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_8

    .line 663
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateFingerList [Select] : Remove CheckBoxPreference, key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 660
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 656
    .end local v0    # "i":I
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_9
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 657
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 1"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 588
    .restart local v0    # "i":I
    :cond_a
    return-void
.end method

.method private appLockUsingFingerprint()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1101
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "applock_lock_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1103
    .local v0, "appLockType":I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/4 v2, 0x7

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private backToFingerlist()V
    .locals 3

    .prologue
    .line 239
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "backToFingerlist stack count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 238
    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 759
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 762
    .local v1, "mActivity":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 763
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd() : Null Activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-void

    .line 767
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 768
    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2, v5}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 770
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    if-eqz v2, :cond_1

    .line 771
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd skip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    .line 786
    .end local v1    # "mActivity":Landroid/app/Activity;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishFingerprintSettings()V

    .line 758
    return-void

    .line 774
    .restart local v1    # "mActivity":Landroid/app/Activity;
    :cond_1
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd cancel session with intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 776
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "cancelsession"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    const/16 v3, 0x3ef

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 778
    check-cast v1, Lcom/android/settings/SettingsActivity;

    .end local v1    # "mActivity":Landroid/app/Activity;
    invoke-virtual {v1, p0, v4, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 781
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "mActivity":Landroid/app/Activity;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 782
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "cancelsession"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private checkDeleteSomeFingerprint()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1108
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    if-nez v5, :cond_0

    move v2, v3

    .line 1109
    .local v2, "isKnoxLocked":Z
    :goto_0
    if-nez v2, :cond_1

    .line 1110
    return v3

    .end local v2    # "isKnoxLocked":Z
    :cond_0
    move v2, v4

    .line 1108
    goto :goto_0

    .line 1113
    .restart local v2    # "isKnoxLocked":Z
    :cond_1
    const v3, 0x7f0b06e6

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, "dialogMessage":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1116
    const v5, 0x7f0b06e7

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1115
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1118
    const v5, 0x104000a

    const/4 v6, 0x0

    .line 1115
    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1119
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1121
    return v4
.end method

.method private checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z
    .locals 9
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 1596
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    .line 1597
    .local v4, "versionInfo":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 1598
    const-string/jumbo v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1597
    if-eqz v5, :cond_3

    .line 1600
    const-string/jumbo v5, "persona"

    .line 1599
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1601
    .local v2, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v2, :cond_2

    .line 1602
    invoke-virtual {v2, v8}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    .line 1604
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v3, :cond_3

    .line 1605
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1606
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v1, v5, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    .line 1607
    .local v1, "personaId":I
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isEnabledFingerprintIndex(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1608
    invoke-direct {p0, p1, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1609
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "whole finger set using in KNOX was selected! PersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const/4 v5, 0x1

    return v5

    .line 1614
    :cond_0
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1615
    const-string/jumbo v7, " doesn\'t use fingerprint index."

    .line 1614
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1620
    .end local v0    # "k":I
    .end local v1    # "personaId":I
    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_2
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    .line 1621
    const-string/jumbo v6, "checkFingerprintIndexUsageInPersona: Unable to access SemPersonaManager."

    .line 1620
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    .end local v2    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_3
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    .line 1625
    const-string/jumbo v6, "checkFingerprintIndexUsageInPersona: Any persona doesn\'t use fingerprint index."

    .line 1624
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    return v8
.end method

.method private checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 7
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    const/4 v4, 0x0

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "remainingNum":I
    const/4 v0, -0x1

    .line 173
    .local v0, "deletedIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 176
    move v0, v1

    .line 173
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 179
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFinishDeleteOperation remainingNum index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", remainingNum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    :cond_2
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 186
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    :cond_3
    if-nez v2, :cond_4

    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private clearselectionChecklist()V
    .locals 3

    .prologue
    .line 1720
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1721
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1720
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1723
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1719
    return-void
.end method

.method private copyTwselectionChecklist()V
    .locals 3

    .prologue
    .line 737
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v1, :cond_0

    .line 738
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    aput-boolean v1, v2, v0

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 736
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 568
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 571
    :cond_0
    const v1, 0x7f080077

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addPreferencesFromResource(I)V

    .line 573
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setFingerprintPreference()V

    .line 574
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V

    .line 585
    return-object v0
.end method

.method private deleteAllFingerPrint()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1127
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v4

    .line 1128
    .local v4, "selectedCount":I
    const-string/jumbo v7, "FpstFingerprintSettings_MultiSelect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteAllFingerPrint : selectedCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v5, 0x0

    .line 1131
    .local v5, "strMessage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1132
    .local v6, "strTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v7, v11, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    const/4 v1, 0x1

    .line 1133
    .local v1, "isEnableFingerprintLock":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v0

    .line 1135
    .local v0, "isEnableFeatures":Z
    if-eqz v1, :cond_2

    .line 1136
    const/4 v2, 0x0

    .line 1137
    .local v2, "locktype":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v3

    .line 1138
    .local v3, "passwordQuality":I
    const-string/jumbo v7, "FpstFingerprintSettings_MultiSelect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "passwordQuality : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    sparse-switch v3, :sswitch_data_0

    .line 1160
    .end local v2    # "locktype":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_1

    .line 1161
    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v10

    const v8, 0x7f0b06e3

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1175
    .end local v3    # "passwordQuality":I
    .local v5, "strMessage":Ljava/lang/String;
    :goto_2
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1178
    new-instance v8, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;

    invoke-direct {v8, p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;ZZ)V

    .line 1177
    const v9, 0x7f0b043e

    .line 1175
    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1194
    const/high16 v8, 0x1040000

    const/4 v9, 0x0

    .line 1175
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1195
    new-instance v8, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$14;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$14;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 1175
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    .line 1202
    if-ne v4, v11, :cond_5

    .line 1203
    const v7, 0x7f0b06dd

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1207
    .local v6, "strTitle":Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 1126
    return-void

    .line 1132
    .end local v0    # "isEnableFeatures":Z
    .end local v1    # "isEnableFingerprintLock":Z
    .local v5, "strMessage":Ljava/lang/String;
    .local v6, "strTitle":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isEnableFingerprintLock":Z
    goto/16 :goto_0

    .line 1143
    .restart local v0    # "isEnableFeatures":Z
    .restart local v2    # "locktype":Ljava/lang/String;
    .restart local v3    # "passwordQuality":I
    :sswitch_0
    const v7, 0x7f0b1292

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "locktype":Ljava/lang/String;
    goto :goto_1

    .line 1148
    .local v2, "locktype":Ljava/lang/String;
    :sswitch_1
    const v7, 0x7f0b1294

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "locktype":Ljava/lang/String;
    goto :goto_1

    .line 1151
    .local v2, "locktype":Ljava/lang/String;
    :sswitch_2
    const v7, 0x7f0b1290

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "locktype":Ljava/lang/String;
    goto :goto_1

    .line 1154
    .local v2, "locktype":Ljava/lang/String;
    :sswitch_3
    const v7, 0x7f0b027c

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "locktype":Ljava/lang/String;
    goto :goto_1

    .line 1163
    .end local v2    # "locktype":Ljava/lang/String;
    :cond_1
    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v10

    const v8, 0x7f0b06e1

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "strMessage":Ljava/lang/String;
    goto :goto_2

    .line 1165
    .end local v3    # "passwordQuality":I
    .local v5, "strMessage":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 1166
    const v7, 0x7f0b06e2

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "strMessage":Ljava/lang/String;
    goto/16 :goto_2

    .line 1168
    .local v5, "strMessage":Ljava/lang/String;
    :cond_3
    if-ne v4, v11, :cond_4

    .line 1169
    const v7, 0x7f0b06df

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "strMessage":Ljava/lang/String;
    goto/16 :goto_2

    .line 1171
    .local v5, "strMessage":Ljava/lang/String;
    :cond_4
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f0b06e0

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "strMessage":Ljava/lang/String;
    goto/16 :goto_2

    .line 1205
    :cond_5
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f0b06de

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "strTitle":Ljava/lang/String;
    goto/16 :goto_3

    .line 1140
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private deleteFingerprintOperation(Z)Z
    .locals 1
    .param p1, "isResetFeature"    # Z

    .prologue
    .line 1213
    const/4 v0, 0x1

    .line 1215
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 1216
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->resetFingerprintSupportingFeatures()V

    .line 1224
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintSequentially()V

    .line 1242
    return v0
.end method

.method private deleteFingerprintSequentially()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1289
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 1290
    :cond_0
    return-void

    .line 1293
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1294
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1296
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 1297
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteFingerprintSequencially delete index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 1287
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_2
    return-void

    .line 1293
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private finishSelectMode()V
    .locals 0

    .prologue
    .line 1715
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->clearselectionChecklist()V

    .line 1716
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->backToFingerlist()V

    .line 1714
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFingerprintSupportingFeatures()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1345
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1346
    const-string/jumbo v2, "fingerprint_secret_box"

    .line 1345
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1347
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    if-eqz v1, :cond_2

    .line 1348
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1345
    :cond_1
    :goto_0
    return v0

    .line 1349
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1350
    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    .line 1349
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1353
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1354
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 1353
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1354
    const/4 v2, 0x5

    .line 1353
    if-eq v1, v2, :cond_1

    .line 1355
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->appLockUsingFingerprint()Z

    move-result v0

    goto :goto_0
.end method

.method private getNumOfCheckedList()I
    .locals 4

    .prologue
    .line 1645
    const/4 v2, 0x0

    .line 1647
    .local v2, "numChecked":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1649
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1650
    .local v0, "c":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1651
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1656
    .end local v0    # "c":Landroid/preference/CheckBoxPreference;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method private isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z
    .locals 11
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "personaId"    # I

    .prologue
    const/4 v10, 0x0

    .line 1544
    const-string/jumbo v7, "persona"

    .line 1543
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1545
    .local v5, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v5, :cond_0

    .line 1546
    const-string/jumbo v7, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v8, "isSelectedWholeFingersUsedKnox: Unable to access SemPersonaManager."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    return v10

    .line 1549
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v6

    .line 1550
    .local v6, "selectedCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1552
    .local v2, "indexToBeRemoved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    if-lez v6, :cond_1

    .line 1565
    :cond_1
    const/4 v4, 0x0

    .line 1566
    .local v4, "matchedCount":I
    invoke-virtual {v5, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getFingerprintIndex(I)[I

    move-result-object v0

    .line 1567
    .local v0, "fingerIndex":[I
    if-nez v0, :cond_2

    .line 1568
    const-string/jumbo v7, "FpstFingerprintSettings_MultiSelect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fingerIndexList cannot be null for PersonaId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    return v10

    .line 1571
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_5

    .line 1572
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 1573
    aget v8, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v8, v7, :cond_4

    .line 1574
    add-int/lit8 v4, v4, 0x1

    .line 1571
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1572
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1582
    .end local v3    # "j":I
    :cond_5
    array-length v7, v0

    if-ne v7, v4, :cond_6

    .line 1586
    const/4 v7, 0x1

    return v7

    .line 1591
    :cond_6
    return v10
.end method

.method private removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 874
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteFingerPrint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 873
    return-void
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1306
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1307
    const-string/jumbo v2, "fingerprint_secret_box"

    .line 1306
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1308
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1309
    const-string/jumbo v2, "fingerprint_webpass"

    .line 1308
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1310
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1311
    const-string/jumbo v2, "fingerprint_fingerIndex"

    .line 1310
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1312
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1313
    const-string/jumbo v2, "fingerprint_used_samsungaccount"

    .line 1312
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1314
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1315
    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    .line 1314
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1316
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setFingerprintScreenLockDisable()V

    .line 1318
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1319
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 1318
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1319
    const/4 v2, 0x5

    .line 1318
    if-ne v1, v2, :cond_0

    .line 1320
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1321
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 1320
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1323
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1324
    const-string/jumbo v2, "applock_lock_type"

    .line 1323
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1325
    .local v0, "appLockType":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 1326
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1327
    const-string/jumbo v2, "applock_lock_type"

    add-int/lit8 v3, v0, -0x4

    .line 1326
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1304
    :cond_1
    return-void
.end method

.method private setContentsStart(Z)V
    .locals 3
    .param p1, "isSet"    # Z

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020481

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 517
    .local v0, "mToolbar":Landroid/widget/Toolbar;
    if-eqz v0, :cond_2

    .line 518
    if-eqz p1, :cond_1

    .line 519
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 523
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    goto :goto_0

    .line 527
    :cond_2
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "onCreateView mToolbar Null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFingerprintPreference()V
    .locals 1

    .prologue
    .line 1710
    const-string/jumbo v0, "register_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    .line 1709
    return-void
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 4

    .prologue
    .line 1332
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "setFingerprintScreenLockDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 1331
    return-void
.end method

.method private setTwselectionChecklist(ZI)V
    .locals 4
    .param p1, "val"    # Z
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 742
    if-gez p2, :cond_0

    .line 743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 744
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aput-boolean p1, v1, v0

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    .end local v0    # "i":I
    :cond_0
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge p2, v2, :cond_3

    .line 747
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aget-boolean v3, v3, p2

    if-eqz v3, :cond_2

    :goto_1
    aput-boolean v1, v2, p2

    .line 741
    :cond_1
    :goto_2
    return-void

    .line 747
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 749
    :cond_3
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTwselectionChecklist, postion error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private showSensorErrorDialog()V
    .locals 6

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 195
    .local v0, "activity":Landroid/app/Activity;
    const v2, 0x7f0b06a2

    .line 197
    .local v2, "stringID":I
    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const v2, 0x7f0b06a3

    .line 201
    :cond_0
    if-eqz v0, :cond_1

    .line 202
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    const v4, 0x7f0b069f

    .line 202
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 206
    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$5;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 205
    const v5, 0x104000a

    .line 202
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 212
    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 202
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 217
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 193
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v4, "Activity is null. Skip SensorErrorDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 754
    return-void
.end method

.method private updateTwChecklist(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 729
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge p1, v0, :cond_0

    .line 730
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTwselectionChecklist(ZI)V

    .line 727
    :goto_0
    return-void

    .line 732
    :cond_0
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTwMultiSelected : postion error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTwMultiSelected()V
    .locals 3

    .prologue
    .line 722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_0
    return-void
.end method


# virtual methods
.method public addCheckedList(Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .param p1, "p"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    return-void
.end method

.method public deleteFingerprint()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 972
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 973
    :cond_0
    return v8

    .line 972
    :cond_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-nez v4, :cond_0

    .line 975
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v1

    .line 977
    .local v1, "selectedCount":I
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 979
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 980
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 981
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 982
    const v6, 0x10409b4

    .line 981
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 984
    return v7

    .line 988
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteAllFingerPrint()V

    .line 1044
    :goto_0
    return v7

    .line 997
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkDeleteSomeFingerprint()Z

    move-result v4

    if-nez v4, :cond_4

    .line 998
    return v7

    .line 1002
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1003
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    .line 1004
    .local v2, "strTitle":Ljava/lang/String;
    if-ne v1, v7, :cond_5

    .line 1005
    const v4, 0x7f0b06dd

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1009
    .local v2, "strTitle":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1012
    if-ne v1, v7, :cond_6

    .line 1013
    const v4, 0x7f0b06df

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1017
    .local v3, "tempStr":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1019
    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$10;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$10;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 1018
    const v5, 0x7f0b043e

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1028
    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$11;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$11;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 1027
    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1035
    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$12;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$12;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1041
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 1042
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1007
    .end local v3    # "tempStr":Ljava/lang/String;
    .local v2, "strTitle":Ljava/lang/String;
    :cond_5
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0b06de

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "strTitle":Ljava/lang/String;
    goto :goto_1

    .line 1015
    :cond_6
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0b06e0

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "tempStr":Ljava/lang/String;
    goto :goto_2
.end method

.method protected finishFingerprintSettings()V
    .locals 3

    .prologue
    .line 790
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "finishFingerprintSettings()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 793
    .local v0, "mActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 794
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "finishFingerprintSettings() : Null Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-void

    .line 798
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 812
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    .line 813
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 819
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v1, :cond_2

    .line 820
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    .line 823
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 824
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 827
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 828
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 789
    :cond_4
    return-void

    .line 816
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 862
    const v0, 0x7f0b19b0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 279
    const/16 v0, 0x31

    return v0
.end method

.method public onBackKey()V
    .locals 2

    .prologue
    .line 1735
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "=====onBackKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    .line 1738
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 1739
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 1733
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a034c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a034d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 285
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v4, "onCreate() : isInMultiWindowMode is TRUE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b072e

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finish()V

    .line 291
    return-void

    .line 294
    :cond_0
    const/4 v1, 0x0

    .line 296
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 298
    .local v2, "i":Landroid/content/Intent;
    if-eqz v2, :cond_1

    const-string/jumbo v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    const-string/jumbo v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 305
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 306
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    .line 307
    const-string/jumbo v3, "selected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    const-string/jumbo v3, "selected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    .line 309
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate selectedIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    const-string/jumbo v3, "twmultiselected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    const-string/jumbo v3, "twmultiselected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    .line 314
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate twselectedChecklist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 319
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v3, "fingerprint"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 320
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 322
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    .line 323
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setHasOptionsMenu(Z)V

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    .line 325
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updatePreferences()V

    .line 283
    return-void

    .line 302
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "bundle":Landroid/os/Bundle;
    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 330
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "onCreateOptionsMenu"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 333
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    .line 334
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v8}, Landroid/view/Menu;->clear()V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040110

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 337
    .local v3, "mSelectActionView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    if-eqz v8, :cond_5

    .line 338
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 339
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x10

    invoke-direct {v9, v10, v11, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v3, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 340
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 341
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 342
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 348
    :goto_0
    const v8, 0x7f1103ae

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 349
    .local v4, "mSelectAllText":Landroid/widget/TextView;
    new-instance v8, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const v8, 0x7f1103ad

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "current_sec_active_themepackage"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 361
    .local v2, "installed_theme_count":I
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Theme : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", installed_theme_count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-eqz v5, :cond_0

    if-lez v2, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d00be

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 365
    .local v0, "allCheckboxColor":I
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 369
    .end local v0    # "allCheckboxColor":I
    :cond_0
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;

    invoke-direct {v9, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const v8, 0x7f1103af

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    .line 377
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 378
    .local v7, "parentActionbar":Landroid/widget/Toolbar;
    if-eqz v7, :cond_1

    .line 379
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0350

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 385
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 386
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 387
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a034c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget v10, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v11, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 388
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    .end local v2    # "installed_theme_count":I
    .end local v4    # "mSelectAllText":Landroid/widget/TextView;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "parentActionbar":Landroid/widget/Toolbar;
    :cond_2
    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const v11, 0x7f0b1176

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 395
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const v11, 0x7f0b043e

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 398
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    if-eqz v8, :cond_6

    .line 399
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "onCreateOptionsMenu : twselectedChecklist is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v1, v8, :cond_6

    .line 402
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    aget-boolean v9, v9, v1

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 344
    .end local v1    # "i":I
    :cond_3
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 345
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_0

    .line 382
    .restart local v2    # "installed_theme_count":I
    .restart local v4    # "mSelectAllText":Landroid/widget/TextView;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v7    # "parentActionbar":Landroid/widget/Toolbar;
    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    goto/16 :goto_1

    .line 391
    .end local v2    # "installed_theme_count":I
    .end local v4    # "mSelectAllText":Landroid/widget/TextView;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "parentActionbar":Landroid/widget/Toolbar;
    :cond_5
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "updateSelectMenu null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 406
    :cond_6
    sget v8, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    .line 407
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 408
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 409
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 411
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
    :goto_4
    return-void

    .line 413
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 867
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 868
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setContentsStart(Z)V

    .line 869
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 870
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 441
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 449
    const/4 v0, 0x0

    return v0

    .line 443
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->renameFingerPrint()V

    .line 451
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 446
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprint()Z

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 834
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 835
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1104bd

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 839
    .local v0, "current":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v1, :cond_0

    .line 840
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .end local v0    # "current":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 842
    .restart local v0    # "current":Landroid/app/Fragment;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->cancelAndSessionEnd()V

    goto :goto_0

    .line 845
    .end local v0    # "current":Landroid/app/Fragment;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->cancelAndSessionEnd()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1729
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 852
    instance-of v0, p2, Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 853
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 856
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    .line 857
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 679
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 680
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 687
    .local v0, "mlistView":Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetDragBlockEnabled(Z)V

    .line 688
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V

    .line 690
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 678
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 506
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setContentsStart(Z)V

    .line 510
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setDivider()V

    .line 505
    return-void
.end method

.method public renameFingerPrint()V
    .locals 5

    .prologue
    .line 888
    const/4 v0, 0x0

    .line 890
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 891
    :cond_0
    return-void

    .line 890
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-nez v2, :cond_0

    .line 893
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 894
    const/4 v1, 0x0

    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 895
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 904
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 894
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 909
    .end local v1    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 910
    return-void

    .line 913
    :cond_4
    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 914
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$9;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$9;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    .line 944
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->sendSurveyForRename()V

    .line 885
    return-void
.end method

.method protected sendSurveyForRename()V
    .locals 4

    .prologue
    .line 951
    const-string/jumbo v2, "TRUE"

    sget-object v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 952
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 953
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPRN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 960
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 963
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 967
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "renameFingerPrint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPRN, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public setDivider()V
    .locals 9

    .prologue
    const v4, 0x7f0a0358

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 532
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 533
    .local v7, "l":Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 535
    .local v8, "listView":Landroid/widget/ListView;
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 538
    .local v6, "isRtl":Z
    :goto_0
    if-nez v6, :cond_2

    .line 539
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 543
    .local v0, "insetdividerSelect":Landroid/graphics/drawable/InsetDrawable;
    :goto_1
    if-eqz v8, :cond_0

    .line 544
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 531
    :cond_0
    return-void

    .end local v0    # "insetdividerSelect":Landroid/graphics/drawable/InsetDrawable;
    .end local v6    # "isRtl":Z
    :cond_1
    move v6, v3

    .line 535
    goto :goto_0

    .line 541
    .restart local v6    # "isRtl":Z
    :cond_2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v2, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .restart local v0    # "insetdividerSelect":Landroid/graphics/drawable/InsetDrawable;
    goto :goto_1
.end method

.method public updateActionbarState()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, "numChecked":I
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v0

    .line 460
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActionbarState checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-lez v0, :cond_1

    .line 463
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b073b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 478
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 454
    :goto_2
    return-void

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b0332

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    const v2, 0x7f0b0721

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 480
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 481
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 482
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 483
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 486
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 487
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 488
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 489
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 494
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 495
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 496
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 497
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public updateSelectionState()V
    .locals 0

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateActionbarState()V

    .line 1631
    return-void
.end method
