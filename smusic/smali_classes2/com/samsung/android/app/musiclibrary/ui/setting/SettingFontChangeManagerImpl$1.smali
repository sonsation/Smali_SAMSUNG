.class Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingFontChangeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "Settings"

    const-string v2, "got Intent : ACTION_FONT_SIZE_CHANGED"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->access$300(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    .line 71
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->access$100(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->access$200(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;Landroid/content/ContentResolver;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;->notifyLargerFontChanged(I)V

    .line 73
    :cond_0
    return-void
.end method
