.class Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;
.super Landroid/database/ContentObserver;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingObserver"
.end annotation


# instance fields
.field private mObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/os/Handler;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 454
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 455
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;->mResolver:Landroid/content/ContentResolver;

    .line 456
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 460
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;->mObserver:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;->mObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 464
    .local v1, "observer":Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    if-eqz v1, :cond_0

    .line 467
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingUtils;->getKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingUtils;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "value":Ljava/lang/String;
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChange - key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0
.end method

.method registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V
    .locals 1
    .param p1, "settingValueChangeObserver"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .prologue
    .line 475
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;->mObserver:Ljava/lang/ref/WeakReference;

    .line 476
    return-void
.end method

.method unregisterObserver()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;->mObserver:Ljava/lang/ref/WeakReference;

    .line 480
    return-void
.end method
