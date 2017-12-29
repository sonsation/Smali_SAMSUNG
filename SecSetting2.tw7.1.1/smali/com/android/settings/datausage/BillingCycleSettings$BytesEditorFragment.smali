.class public Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
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
    name = "BytesEditorFragment"
.end annotation


# instance fields
.field private mEditTextByte:Landroid/widget/EditText;

.field private mSpinnerType:Landroid/widget/Spinner;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private formatText(F)Ljava/lang/String;
    .locals 2
    .param p1, "v"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 438
    mul-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float p1, v0, v1

    .line 439
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 12
    .param p1, "bytesPicker"    # Landroid/widget/EditText;
    .param p2, "type"    # Landroid/widget/Spinner;

    .prologue
    const/4 v11, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/DataUsageEditController;

    .line 409
    .local v5, "target":Lcom/android/settings/datausage/DataUsageEditController;
    invoke-interface {v5}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v3

    .line 411
    .local v3, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "template"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkTemplate;

    .line 412
    .local v8, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "limit"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 413
    .local v4, "isLimit":Z
    if-eqz v4, :cond_2

    invoke-virtual {v3, v8}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .line 415
    .local v0, "bytes":J
    :goto_0
    if-eqz v4, :cond_0

    :cond_0
    const-wide/16 v6, -0x1

    .line 417
    .local v6, "limitDisabled":J
    long-to-float v9, v0

    const/high16 v10, 0x4ec00000

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 419
    long-to-float v9, v0

    const/high16 v10, 0x53800000

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 420
    const-wide v0, 0x10000000000L

    .line 423
    :cond_1
    long-to-float v9, v0

    const/high16 v10, 0x4e800000

    div-float/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "bytesText":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v11, v9}, Landroid/widget/EditText;->setSelection(II)V

    .line 427
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 407
    :goto_1
    return-void

    .line 414
    .end local v0    # "bytes":J
    .end local v2    # "bytesText":Ljava/lang/String;
    .end local v6    # "limitDisabled":J
    :cond_2
    invoke-virtual {v3, v8}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .restart local v0    # "bytes":J
    goto :goto_0

    .line 429
    .restart local v6    # "limitDisabled":J
    :cond_3
    long-to-float v9, v0

    const/high16 v10, 0x49800000    # 1048576.0f

    div-float/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v2

    .line 430
    .restart local v2    # "bytesText":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v11, v9}, Landroid/widget/EditText;->setSelection(II)V

    .line 433
    invoke-virtual {p2, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleSettings;Z)Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/datausage/BillingCycleSettings;
    .param p1, "isLimit"    # Z

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 369
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "template"

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 371
    const-string/jumbo v2, "limit"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    new-instance v1, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;-><init>()V

    .line 374
    .local v1, "dialog":Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 375
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 377
    return-object v1
.end method


# virtual methods
.method public bixbyGetByte()J
    .locals 7

    .prologue
    .line 510
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mEditTextByte:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "bytesString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 512
    const-string/jumbo v2, "0"

    .line 514
    :cond_0
    const-wide/16 v0, 0x0

    .line 516
    .local v0, "bytes":J
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 517
    iget-object v4, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mSpinnerType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    const-wide/32 v4, 0x100000

    :goto_0
    long-to-float v4, v4

    .line 516
    mul-float/2addr v4, v6

    float-to-long v0, v4

    .line 522
    :goto_1
    return-wide v0

    .line 517
    :cond_1
    const-wide/32 v4, 0x40000000

    goto :goto_0

    .line 518
    :catch_0
    move-exception v3

    .line 519
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "BillingCycleSettings"

    const-string/jumbo v5, "could not persist insert byte"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 19
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 444
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v12

    check-cast v12, Lcom/android/settings/datausage/DataUsageEditController;

    .line 448
    .local v12, "target":Lcom/android/settings/datausage/DataUsageEditController;
    invoke-interface {v12}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v7

    .line 450
    .local v7, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v16

    const-string/jumbo v17, "template"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkTemplate;

    .line 451
    .local v13, "template":Landroid/net/NetworkTemplate;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v16

    const-string/jumbo v17, "limit"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 452
    .local v8, "isLimit":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f11026c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 453
    .local v4, "bytesField":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f11026d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 455
    .local v9, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, "bytesString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 457
    const-string/jumbo v5, "0"

    .line 459
    :cond_1
    const-wide/16 v2, 0x0

    .line 461
    .local v2, "bytes":J
    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v18

    .line 462
    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    if-nez v16, :cond_4

    const-wide/32 v16, 0x100000

    :goto_0
    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    .line 461
    mul-float v16, v16, v18

    move/from16 v0, v16

    float-to-long v2, v0

    .line 468
    :goto_1
    long-to-float v0, v2

    move/from16 v16, v0

    const/high16 v17, 0x53800000

    cmpl-float v16, v16, v17

    if-lez v16, :cond_2

    .line 469
    const-wide v2, 0x10000000000L

    .line 472
    :cond_2
    if-eqz v8, :cond_5

    .line 473
    invoke-virtual {v7, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v14

    .line 474
    .local v14, "warning_value":J
    const-wide/16 v16, -0x1

    cmp-long v16, v14, v16

    if-eqz v16, :cond_3

    cmp-long v16, v14, v2

    if-lez v16, :cond_3

    .line 475
    invoke-virtual {v7, v13, v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 477
    :cond_3
    const-string/jumbo v16, "BillingCycleSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "setPolicyLimitBytes() limitBytes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v7, v13, v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 487
    .end local v14    # "warning_value":J
    :goto_2
    invoke-interface {v12}, Lcom/android/settings/datausage/DataUsageEditController;->updateDataUsage()V

    .line 443
    return-void

    .line 462
    :cond_4
    const-wide/32 v16, 0x40000000

    goto :goto_0

    .line 463
    :catch_0
    move-exception v6

    .line 464
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v16, "BillingCycleSettings"

    const-string/jumbo v17, "could not persist insert byte"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 480
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    invoke-virtual {v7, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v10

    .line 481
    .local v10, "limit_value":J
    const-wide/16 v16, -0x1

    cmp-long v16, v10, v16

    if-eqz v16, :cond_6

    cmp-long v16, v10, v2

    if-gez v16, :cond_6

    .line 482
    move-wide v2, v10

    .line 484
    :cond_6
    const-string/jumbo v16, "BillingCycleSettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "setPolicyWarningBytes() WarningBytes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v7, v13, v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f11026c

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 383
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 384
    .local v2, "dialogInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "limit"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 385
    .local v4, "isLimit":Z
    const v5, 0x7f0400b1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 386
    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v6, 0x7f11026d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 387
    .local v3, "dialog_spinner":Landroid/widget/Spinner;
    invoke-virtual {v3}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f0d0242

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 388
    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-direct {p0, v5, v3}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 391
    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mEditTextByte:Landroid/widget/EditText;

    .line 392
    iput-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mSpinnerType:Landroid/widget/Spinner;

    .line 395
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 396
    if-eqz v4, :cond_0

    const v5, 0x7f0b1b09

    .line 395
    :goto_0
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 398
    iget-object v6, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 395
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 399
    const v6, 0x7f0b1b07

    .line 395
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 400
    const/high16 v6, 0x1040000

    .line 395
    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 402
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 403
    const/4 v6, 0x5

    .line 402
    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 404
    return-object v1

    .line 397
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const v5, 0x7f0b1b08

    goto :goto_0
.end method
