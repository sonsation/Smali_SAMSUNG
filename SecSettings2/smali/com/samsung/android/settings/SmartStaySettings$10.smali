.class Lcom/samsung/android/settings/SmartStaySettings$10;
.super Ljava/lang/Object;
.source "SmartStaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SmartStaySettings;->maketurnOffUniversalPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SmartStaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SmartStaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SmartStaySettings;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/samsung/android/settings/SmartStaySettings$10;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lcom/samsung/android/settings/SmartStaySettings$10;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/SmartStaySettings;->-get0(Lcom/samsung/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SmartStaySettings$10;->this$0:Lcom/samsung/android/settings/SmartStaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SmartStaySettings;->-wrap0(Lcom/samsung/android/settings/SmartStaySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 284
    const-string/jumbo v3, "intelligent_sleep_mode"

    .line 283
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 282
    return-void
.end method
