.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;
.super Ljava/lang/Object;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->maketurnOffUniversalPopup(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
    .param p2, "val$preference"    # Landroid/preference/Preference;

    .prologue
    .line 2545
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 2547
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffUniversalSwitch(Landroid/content/Context;)Z

    .line 2548
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->val$preference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get27(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2549
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 2550
    const-string/jumbo v1, "intelligent_sleep_mode"

    .line 2549
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2551
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2552
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2553
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2551
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 2546
    :cond_0
    :goto_0
    return-void

    .line 2554
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->val$preference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2555
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 2556
    const-string/jumbo v1, "surface_palm_swipe"

    .line 2555
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2557
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2558
    const v2, 0x7f0f01eb

    .line 2557
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2558
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2557
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0
.end method
