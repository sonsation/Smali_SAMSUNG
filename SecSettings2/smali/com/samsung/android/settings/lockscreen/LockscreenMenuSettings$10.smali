.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->makeAccessiblityDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    .prologue
    .line 1925
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1928
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1926
    return-void
.end method
