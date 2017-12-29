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

.field private static selectedId:I


# instance fields
.field private SCREEN_ID_REMOVE:I

.field private SCREEN_ID_RENAME:I

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

.field private mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

.field private mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

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
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->SCREEN_ID_REMOVE:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->SCREEN_ID_RENAME:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Lcom/android/settings/fingerprint/FingerprintDeleteDialog;)Lcom/android/settings/fingerprint/FingerprintDeleteDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Lcom/android/settings/fingerprint/FingerprintDeleteDialog;)Lcom/android/settings/fingerprint/FingerprintDeleteDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

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

.method static synthetic -wrap10(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwMultiSelected()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->copyTwselectionChecklist()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintSequentially()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishSelectMode()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;ZI)V
    .locals 0
    .param p1, "val"    # Z
    .param p2, "position"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTwselectionChecklist(ZI)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwChecklist(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    .line 139
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 90
    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 93
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    .line 95
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    .line 96
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    .line 97
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 98
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 99
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    .line 104
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    .line 105
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    .line 106
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 110
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    .line 112
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    .line 142
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 191
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    .line 380
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    .line 660
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    .line 84
    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2
    .param p1, "isSelect"    # Z

    .prologue
    .line 1398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1399
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1402
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    .line 1396
    return-void
.end method

.method private addCheckedList(Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .param p1, "p"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 9
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 566
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 567
    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 570
    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 572
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 573
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 576
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_2

    .line 577
    move v2, v0

    .line 578
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

    .line 580
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 581
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 582
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 576
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    .end local v2    # "j":I
    :cond_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 587
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 589
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 590
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 591
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 596
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

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 599
    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_4

    .line 600
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 601
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

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 604
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_7

    .line 605
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 606
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

    .line 607
    .local v3, "pref":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_5

    .line 608
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->genKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 611
    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 612
    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 613
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addCheckedList(Landroid/preference/CheckBoxPreference;)V

    .line 604
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 617
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_6
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 618
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null after sorting"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v0    # "i":I
    :cond_7
    :goto_4
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .restart local v0    # "i":I
    :goto_5
    const/4 v4, 0x4

    if-ge v0, v4, :cond_a

    .line 626
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

    .line 627
    .restart local v3    # "pref":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_8

    .line 628
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

    .line 629
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 625
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 621
    .end local v0    # "i":I
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_9
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 622
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null before sorting"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 560
    .restart local v0    # "i":I
    :cond_a
    return-void
.end method

.method private appLockUsingFingerprint()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 990
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "applock_lock_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 992
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
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 207
    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 724
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 727
    .local v1, "mActivity":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 728
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd() : Null Activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void

    .line 732
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 733
    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2, v5}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 735
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    if-eqz v2, :cond_1

    .line 736
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd skip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    .line 756
    .end local v1    # "mActivity":Landroid/app/Activity;
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->closeAllDialog()V

    .line 757
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishFingerprintSettings()V

    .line 723
    return-void

    .line 739
    .restart local v1    # "mActivity":Landroid/app/Activity;
    :cond_1
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd cancel session with intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 741
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "cancelsession"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    const/16 v3, 0x3ef

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 743
    check-cast v1, Lcom/android/settings/SettingsActivity;

    .end local v1    # "mActivity":Landroid/app/Activity;
    invoke-virtual {v1, p0, v4, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 746
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "mActivity":Landroid/app/Activity;
    :cond_2
    const/4 v0, 0x0

    .line 747
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    if-nez v2, :cond_3

    .line 748
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 749
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "cancelsession"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd cancel session with intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    .line 753
    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private checkDeleteSomeFingerprint()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 997
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    if-nez v5, :cond_0

    move v2, v3

    .line 998
    .local v2, "isKnoxLocked":Z
    :goto_0
    if-nez v2, :cond_1

    .line 999
    return v3

    .end local v2    # "isKnoxLocked":Z
    :cond_0
    move v2, v4

    .line 997
    goto :goto_0

    .line 1002
    .restart local v2    # "isKnoxLocked":Z
    :cond_1
    const v3, 0x7f0b0812

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1004
    .local v1, "dialogMessage":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1005
    const v5, 0x7f0b0813

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1004
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1007
    const v5, 0x104000a

    const/4 v6, 0x0

    .line 1004
    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1008
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1010
    return v4
.end method

.method private checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z
    .locals 9
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 1357
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    .line 1358
    .local v4, "versionInfo":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 1359
    const-string/jumbo v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1358
    if-eqz v5, :cond_3

    .line 1361
    const-string/jumbo v5, "persona"

    .line 1360
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1362
    .local v2, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v2, :cond_2

    .line 1363
    invoke-virtual {v2, v8}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    .line 1365
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v3, :cond_3

    .line 1366
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1367
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v1, v5, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    .line 1368
    .local v1, "personaId":I
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isEnabledFingerprintIndex(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1369
    invoke-direct {p0, p1, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1370
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

    .line 1372
    const/4 v5, 0x1

    return v5

    .line 1375
    :cond_0
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1376
    const-string/jumbo v7, " doesn\'t use fingerprint index."

    .line 1375
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1381
    .end local v0    # "k":I
    .end local v1    # "personaId":I
    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_2
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    .line 1382
    const-string/jumbo v6, "checkFingerprintIndexUsageInPersona: Unable to access SemPersonaManager."

    .line 1381
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    .end local v2    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_3
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    .line 1386
    const-string/jumbo v6, "checkFingerprintIndexUsageInPersona: Any persona doesn\'t use fingerprint index."

    .line 1385
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    return v8
.end method

.method private checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 7
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    const/4 v4, 0x0

    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "remainingNum":I
    const/4 v0, -0x1

    .line 171
    .local v0, "deletedIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 174
    move v0, v1

    .line 171
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 177
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

    .line 182
    :cond_2
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 184
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 185
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 188
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
    .line 1430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1431
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1433
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1429
    return-void
.end method

.method private closeAllDialog()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->cancelDeleteDialog()V

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->cancelDeleteDialog()V

    .line 778
    :cond_2
    return-void
.end method

.method private copyTwselectionChecklist()V
    .locals 3

    .prologue
    .line 701
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v1, :cond_0

    .line 702
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    aput-boolean v1, v2, v0

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 550
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 553
    :cond_0
    const v1, 0x7f080079

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addPreferencesFromResource(I)V

    .line 554
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setFingerprintPreference()V

    .line 555
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V

    .line 557
    return-object v0
.end method

.method private deleteAllFingerPrint()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1016
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v2

    .line 1017
    .local v2, "selectedCount":I
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deleteAllFingerPrint : selectedCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v3, 0x0

    .line 1020
    .local v3, "strMessage":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1021
    .local v4, "strTitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v5, v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-ne v5, v8, :cond_1

    const/4 v1, 0x1

    .line 1022
    .local v1, "isEnableFingerprintLock":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v0

    .line 1024
    .local v0, "isEnableFeatures":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 1025
    :cond_0
    const v5, 0x7f0b080e

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, "strMessage":Ljava/lang/String;
    :goto_1
    if-ne v2, v8, :cond_4

    .line 1035
    const v5, 0x7f0b0809

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1039
    .local v4, "strTitle":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->SCREEN_ID_REMOVE:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 1041
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    new-instance v6, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$9;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$9;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;ZZ)V

    invoke-direct {v5, v4, v3, v6}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;)V

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    .line 1074
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string/jumbo v7, "fpstDeleteAllDialog"

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1015
    return-void

    .line 1021
    .end local v0    # "isEnableFeatures":Z
    .end local v1    # "isEnableFingerprintLock":Z
    .local v3, "strMessage":Ljava/lang/String;
    .local v4, "strTitle":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isEnableFingerprintLock":Z
    goto :goto_0

    .line 1027
    .restart local v0    # "isEnableFeatures":Z
    :cond_2
    if-ne v2, v8, :cond_3

    .line 1028
    const v5, 0x7f0b080b

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "strMessage":Ljava/lang/String;
    goto :goto_1

    .line 1030
    .local v3, "strMessage":Ljava/lang/String;
    :cond_3
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x7f0b080c

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "strMessage":Ljava/lang/String;
    goto :goto_1

    .line 1037
    :cond_4
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x7f0b080a

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "strTitle":Ljava/lang/String;
    goto :goto_2
.end method

.method private deleteFingerprintOperation(Z)Z
    .locals 1
    .param p1, "isResetFeature"    # Z

    .prologue
    .line 1079
    const/4 v0, 0x1

    .line 1081
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 1082
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->resetFingerprintSupportingFeatures()V

    .line 1085
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintSequentially()V

    .line 1087
    return v0
.end method

.method private deleteFingerprintSequentially()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1092
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 1093
    :cond_0
    return-void

    .line 1096
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1097
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1099
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 1100
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

    .line 1101
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 1090
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_2
    return-void

    .line 1096
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private finishSelectMode()V
    .locals 0

    .prologue
    .line 1425
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->clearselectionChecklist()V

    .line 1426
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->backToFingerlist()V

    .line 1424
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 639
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

    .line 1142
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1143
    const-string/jumbo v2, "fingerprint_secret_box"

    .line 1142
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1144
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    if-eqz v1, :cond_2

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1142
    :cond_1
    :goto_0
    return v0

    .line 1146
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1147
    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    .line 1146
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1150
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1151
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 1150
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1151
    const/4 v2, 0x5

    .line 1150
    if-eq v1, v2, :cond_1

    .line 1152
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->appLockUsingFingerprint()Z

    move-result v0

    goto :goto_0
.end method

.method private getNumOfCheckedList()I
    .locals 4

    .prologue
    .line 1406
    const/4 v2, 0x0

    .line 1408
    .local v2, "numChecked":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1410
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

    .line 1411
    .local v0, "c":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1412
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1417
    .end local v0    # "c":Landroid/preference/CheckBoxPreference;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method private isNotEnoughSpace()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_scale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 480
    .local v0, "currentScale":F
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0138

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "strEntryValues":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getProperTabletDensities(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 485
    .local v1, "mListDensities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 486
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    .line 487
    const/4 v3, 0x1

    return v3

    .line 489
    :cond_0
    return v6
.end method

.method private isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z
    .locals 11
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "personaId"    # I

    .prologue
    const/4 v10, 0x0

    .line 1305
    const-string/jumbo v7, "persona"

    .line 1304
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1306
    .local v5, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v5, :cond_0

    .line 1307
    const-string/jumbo v7, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v8, "isSelectedWholeFingersUsedKnox: Unable to access SemPersonaManager."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return v10

    .line 1310
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v6

    .line 1311
    .local v6, "selectedCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .local v2, "indexToBeRemoved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    if-lez v6, :cond_1

    .line 1326
    :cond_1
    const/4 v4, 0x0

    .line 1327
    .local v4, "matchedCount":I
    invoke-virtual {v5, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getFingerprintIndex(I)[I

    move-result-object v0

    .line 1328
    .local v0, "fingerIndex":[I
    if-nez v0, :cond_2

    .line 1329
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

    .line 1330
    return v10

    .line 1332
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_5

    .line 1333
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 1334
    aget v8, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v8, v7, :cond_4

    .line 1335
    add-int/lit8 v4, v4, 0x1

    .line 1332
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1333
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1343
    .end local v3    # "j":I
    :cond_5
    array-length v7, v0

    if-ne v7, v4, :cond_6

    .line 1347
    const/4 v7, 0x1

    return v7

    .line 1352
    :cond_6
    return v10
.end method

.method private removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 833
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

    .line 834
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 832
    return-void
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1109
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1110
    const-string/jumbo v2, "fingerprint_secret_box"

    .line 1109
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1111
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1112
    const-string/jumbo v2, "fingerprint_webpass"

    .line 1111
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1113
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1114
    const-string/jumbo v2, "fingerprint_fingerIndex"

    .line 1113
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1115
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1116
    const-string/jumbo v2, "fingerprint_used_samsungaccount"

    .line 1115
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1117
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1118
    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    .line 1117
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1119
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setFingerprintScreenLockDisable()V

    .line 1121
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1122
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 1121
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1122
    const/4 v2, 0x5

    .line 1121
    if-ne v1, v2, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1124
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 1123
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1127
    const-string/jumbo v2, "applock_lock_type"

    .line 1126
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1128
    .local v0, "appLockType":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1130
    const-string/jumbo v2, "applock_lock_type"

    add-int/lit8 v3, v0, -0x4

    .line 1129
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1107
    :cond_1
    return-void
.end method

.method private setContentsStart(Z)V
    .locals 3
    .param p1, "isSet"    # Z

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020497

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 505
    .local v0, "mToolbar":Landroid/widget/Toolbar;
    if-eqz v0, :cond_2

    .line 506
    if-eqz p1, :cond_1

    .line 507
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 511
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    goto :goto_0

    .line 515
    :cond_2
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "setContentsStart mToolbar Null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFingerprintPreference()V
    .locals 1

    .prologue
    .line 1421
    const-string/jumbo v0, "register_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    .line 1420
    return-void
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 4

    .prologue
    .line 1135
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "setFingerprintScreenLockDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 1134
    return-void
.end method

.method private setTwselectionChecklist(ZI)V
    .locals 4
    .param p1, "val"    # Z
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 707
    if-gez p2, :cond_0

    .line 708
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aput-boolean p1, v1, v0

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    .end local v0    # "i":I
    :cond_0
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge p2, v2, :cond_3

    .line 712
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aget-boolean v3, v3, p2

    if-eqz v3, :cond_2

    :goto_1
    aput-boolean v1, v2, p2

    .line 706
    :cond_1
    :goto_2
    return-void

    .line 712
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 714
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

.method private updateActionbarState()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 422
    const/4 v0, 0x0

    .line 424
    .local v0, "numChecked":I
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v0

    .line 426
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

    .line 428
    if-lez v0, :cond_1

    .line 429
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b086a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 444
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 469
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isNotEnoughSpace()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 471
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 420
    :goto_3
    return-void

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0b03db

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    const v2, 0x7f0b084c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 441
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 446
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 447
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 448
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 449
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 452
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 453
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 454
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 455
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 460
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 461
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 462
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 463
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 473
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 474
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_3

    .line 444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 719
    return-void
.end method

.method private updateSelectionState()V
    .locals 0

    .prologue
    .line 1393
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateActionbarState()V

    .line 1392
    return-void
.end method

.method private updateTwChecklist(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 693
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge p1, v0, :cond_0

    .line 694
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTwselectionChecklist(ZI)V

    .line 691
    :goto_0
    return-void

    .line 696
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
    .line 686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteFingerprint()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 917
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-eqz v3, :cond_1

    .line 918
    :cond_0
    return v7

    .line 917
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-nez v3, :cond_0

    .line 920
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v0

    .line 922
    .local v0, "selectedCount":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 924
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 925
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 926
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 927
    const v5, 0x1040a1a

    .line 926
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 929
    return v6

    .line 933
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteAllFingerPrint()V

    .line 986
    :goto_0
    return v6

    .line 936
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkDeleteSomeFingerprint()Z

    move-result v3

    if-nez v3, :cond_4

    .line 937
    return v6

    .line 940
    :cond_4
    const/4 v2, 0x0

    .line 941
    .local v2, "strTitle":Ljava/lang/String;
    if-ne v0, v6, :cond_5

    .line 942
    const v3, 0x7f0b0809

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, "strTitle":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->SCREEN_ID_REMOVE:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 949
    if-ne v0, v6, :cond_6

    .line 950
    const v3, 0x7f0b080b

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, "strMsg":Ljava/lang/String;
    :goto_2
    new-instance v3, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-direct {v3, v2, v1, v4}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    .line 984
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "fpstDeleteSomeDialog"

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 944
    .end local v1    # "strMsg":Ljava/lang/String;
    .local v2, "strTitle":Ljava/lang/String;
    :cond_5
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f0b080a

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "strTitle":Ljava/lang/String;
    goto :goto_1

    .line 952
    :cond_6
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f0b080c

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "strMsg":Ljava/lang/String;
    goto :goto_2
.end method

.method protected finishFingerprintSettings()V
    .locals 3

    .prologue
    .line 761
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "finishFingerprintSettings()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 764
    .local v0, "mActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 765
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "finishFingerprintSettings() : Null Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    return-void

    .line 769
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 770
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    .line 771
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 760
    :cond_1
    :goto_0
    return-void

    .line 774
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 821
    const v0, 0x7f0b1bd9

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onBackKey()V
    .locals 2

    .prologue
    .line 1445
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "=====onBackKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    .line 1448
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 1443
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 220
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "FpstFingerprintSettings_MultiSelect"

    const v7, 0x7f0b0983

    invoke-static {v5, v7, v6}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finish()V

    .line 225
    return-void

    .line 227
    :cond_0
    const/4 v1, 0x0

    .line 229
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 230
    .local v3, "isBixby":Z
    const/4 v4, -0x1

    .line 233
    .local v4, "opValue":I
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_7

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 235
    .local v2, "i":Landroid/content/Intent;
    if-eqz v2, :cond_1

    const-string/jumbo v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    const-string/jumbo v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 242
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 243
    const-string/jumbo v5, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    .line 244
    const-string/jumbo v5, "selected_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 245
    const-string/jumbo v5, "selected_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    .line 246
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate selectedIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    const-string/jumbo v5, "isBixby"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 251
    const-string/jumbo v5, "isBixby"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 252
    .local v3, "isBixby":Z
    if-eqz v3, :cond_3

    const-string/jumbo v5, "opValue"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 253
    const-string/jumbo v5, "opValue"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 255
    :cond_3
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate isBixby["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "], opValue["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v3    # "isBixby":Z
    :cond_4
    const-string/jumbo v5, "twmultiselected_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 261
    const-string/jumbo v5, "twmultiselected_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    .line 262
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate twselectedChecklist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    invoke-static {v7}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 267
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v5, "fingerprint"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 268
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 270
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    .line 271
    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setHasOptionsMenu(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    .line 273
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updatePreferences()V

    .line 276
    if-eqz v3, :cond_6

    sget v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 277
    if-ne v4, v8, :cond_8

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->renameFingerPrint()V

    .line 287
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f024f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->SCREEN_ID_REMOVE:I

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f024b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->SCREEN_ID_RENAME:I

    .line 219
    return-void

    .line 239
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .local v3, "isBixby":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "bundle":Landroid/os/Bundle;
    goto/16 :goto_0

    .line 279
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "isBixby":Z
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_8
    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 280
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteAllFingerPrint()V

    goto :goto_1

    .line 282
    :cond_9
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error occurs. Wrong Bixby operation value["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] - 1:Rename, 2:Remove"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 293
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "onCreateOptionsMenu"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 296
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    .line 297
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v8}, Landroid/view/Menu;->clear()V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040121

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 300
    .local v3, "mSelectActionView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    if-eqz v8, :cond_5

    .line 301
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 302
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x10

    invoke-direct {v9, v10, v11, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v3, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 303
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 304
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 305
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 311
    :goto_0
    const v8, 0x7f1103ff

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 312
    .local v4, "mSelectAllText":Landroid/widget/TextView;
    new-instance v8, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$5;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v8, 0x7f1103fe

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "current_sec_active_themepackage"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 322
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

    .line 324
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

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-eqz v5, :cond_0

    if-lez v2, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d00c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 328
    .local v0, "allCheckboxColor":I
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 332
    .end local v0    # "allCheckboxColor":I
    :cond_0
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;

    invoke-direct {v9, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const v8, 0x7f110400

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    .line 340
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 341
    .local v7, "parentActionbar":Landroid/widget/Toolbar;
    if-eqz v7, :cond_1

    .line 342
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a03f2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 348
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

    .line 349
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 350
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a03ee

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget v10, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v11, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 351
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
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

    const v11, 0x7f0b1358

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 358
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const v11, 0x7f0b0510

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 361
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    if-eqz v8, :cond_6

    .line 362
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "onCreateOptionsMenu : twselectedChecklist is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v1, v8, :cond_6

    .line 365
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    aget-boolean v9, v9, v1

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 307
    .end local v1    # "i":I
    :cond_3
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 308
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_0

    .line 345
    .restart local v2    # "installed_theme_count":I
    .restart local v4    # "mSelectAllText":Landroid/widget/TextView;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v7    # "parentActionbar":Landroid/widget/Toolbar;
    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    goto/16 :goto_1

    .line 354
    .end local v2    # "installed_theme_count":I
    .end local v4    # "mSelectAllText":Landroid/widget/TextView;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "parentActionbar":Landroid/widget/Toolbar;
    :cond_5
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "updateSelectMenu null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 369
    :cond_6
    sget v8, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    .line 370
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 371
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 372
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 373
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 374
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    :goto_4
    return-void

    .line 376
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 826
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 827
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setContentsStart(Z)V

    .line 828
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 829
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 1454
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    .line 1455
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isResumed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0859

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 404
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 415
    const/4 v0, 0x0

    return v0

    .line 406
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f024c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->SCREEN_ID_RENAME:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->renameFingerPrint()V

    .line 417
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 411
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprint()Z

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 794
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 795
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1105a0

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 799
    .local v0, "current":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v1, :cond_0

    .line 800
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v0    # "current":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 802
    .restart local v0    # "current":Landroid/app/Fragment;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->cancelAndSessionEnd()V

    goto :goto_0

    .line 805
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
    .line 1439
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 811
    instance-of v0, p2, Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 812
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 815
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    .line 816
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 644
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 645
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 649
    .local v0, "mlistView":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetDragBlockEnabled(Z)V

    .line 651
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V

    .line 654
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 643
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 494
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setContentsStart(Z)V

    .line 498
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setDivider()V

    .line 493
    return-void
.end method

.method public renameFingerPrint()V
    .locals 6

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 842
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    if-eqz v2, :cond_1

    .line 843
    :cond_0
    return-void

    .line 842
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-nez v2, :cond_0

    .line 845
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 846
    const/4 v1, 0x0

    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 847
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 856
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 846
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 861
    .end local v1    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 862
    return-void

    .line 865
    :cond_4
    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(ILjava/lang/CharSequence;I)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 866
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    .line 889
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 891
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->sendSurveyForRename()V

    .line 837
    return-void
.end method

.method protected sendSurveyForRename()V
    .locals 4

    .prologue
    .line 896
    const-string/jumbo v2, "TRUE"

    sget-object v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 898
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPRN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 905
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 908
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 912
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "renameFingerPrint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPRN, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public setDivider()V
    .locals 9

    .prologue
    const v4, 0x7f0a03fa

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 520
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 521
    .local v7, "l":Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 523
    .local v8, "listView":Landroid/widget/ListView;
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 526
    .local v6, "isRtl":Z
    :goto_0
    if-nez v6, :cond_2

    .line 527
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

    .line 531
    .local v0, "insetdividerSelect":Landroid/graphics/drawable/InsetDrawable;
    :goto_1
    if-eqz v8, :cond_0

    .line 532
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 519
    :cond_0
    return-void

    .end local v0    # "insetdividerSelect":Landroid/graphics/drawable/InsetDrawable;
    .end local v6    # "isRtl":Z
    :cond_1
    move v6, v3

    .line 523
    goto :goto_0

    .line 529
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
