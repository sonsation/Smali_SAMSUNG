.class public Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# instance fields
.field private mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/datausage/BillingCycleSettings;

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 391
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "template"

    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->-get5(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 394
    new-instance v1, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;-><init>()V

    .line 395
    .local v1, "dialog":Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 396
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 388
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "template"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 445
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 446
    .local v3, "target":Lcom/android/settings/datausage/BillingCycleSettings;
    iget-object v5, v3, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v5, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 449
    .local v2, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPicker;->clearFocus()V

    .line 451
    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v0

    .line 452
    .local v0, "cycleDay":I
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 453
    .local v1, "cycleTimezone":Ljava/lang/String;
    invoke-virtual {v2, v4, v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 454
    invoke-static {v3}, Lcom/android/settings/datausage/BillingCycleSettings;->-wrap1(Lcom/android/settings/datausage/BillingCycleSettings;)V

    .line 443
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 403
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 404
    .local v6, "target":Lcom/android/settings/datausage/BillingCycleSettings;
    iget-object v10, v6, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v5, v10, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 406
    .local v5, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 407
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 409
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    const v10, 0x7f0400a9

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 410
    .local v9, "view":Landroid/view/View;
    const v10, 0x7f11025e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    .line 412
    const v10, 0x7f11025d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 413
    .local v8, "textView":Landroid/widget/TextView;
    new-instance v10, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v10}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "template"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkTemplate;

    .line 417
    .local v7, "template":Landroid/net/NetworkTemplate;
    if-eqz p1, :cond_0

    const-string/jumbo v10, "CYCLE_DAY"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 420
    .local v2, "cycleDay":I
    :goto_0
    const-string/jumbo v10, "BillingCycleSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onCreateDialog()template:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " cycleDay"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 423
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v11, 0x1f

    invoke-virtual {v10, v11}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 424
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v10, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 425
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/widget/SemNumberPicker;->setWrapSelectorWheel(Z)V

    .line 427
    const v10, 0x7f0b18db

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 429
    const v11, 0x7f0b18dd

    .line 427
    invoke-virtual {v10, v11, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 430
    const/high16 v11, 0x1040000

    const/4 v12, 0x0

    .line 427
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 432
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 433
    return-object v3

    .line 418
    .end local v2    # "cycleDay":I
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    invoke-virtual {v5, v7}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v2

    .restart local v2    # "cycleDay":I
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 439
    const-string/jumbo v0, "CYCLE_DAY"

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    return-void
.end method
