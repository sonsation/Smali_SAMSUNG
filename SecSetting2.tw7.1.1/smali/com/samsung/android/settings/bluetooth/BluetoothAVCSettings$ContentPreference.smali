.class Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;
.super Landroid/preference/Preference;
.source "BluetoothAVCSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    .line 464
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 466
    const v0, 0x7f040056

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->setLayoutResource(I)V

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->setSelectable(Z)V

    .line 463
    return-void
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 0

    .prologue
    .line 502
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 501
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 473
    const-string/jumbo v4, "BluetoothAVCSettings"

    const-string/jumbo v5, "onBindView :: refresh contents"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const v4, 0x7f1100e2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 476
    .local v2, "image":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 477
    .local v0, "anim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v1, "contentBuilder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 482
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 483
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const v5, 0x7f0b04aa

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 496
    :goto_0
    const v4, 0x7f11019e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 497
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    return-void

    .line 484
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 485
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const v5, 0x7f0b04b0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 487
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const v5, 0x7f0b04b1

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 488
    const-string/jumbo v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const v5, 0x7f0b04ac

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 490
    const-string/jumbo v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const v5, 0x7f0b04ab

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 492
    const-string/jumbo v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const v5, 0x7f0b04ad

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
