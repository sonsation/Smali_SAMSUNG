.class Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get8(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->turnOffTalkBack()Z

    .line 444
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 446
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.overlaymagnifier"

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get1(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 448
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get2(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-wrap0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    .line 452
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-set0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;Z)Z

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get5(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-wrap1(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    .line 441
    :cond_1
    return-void
.end method
