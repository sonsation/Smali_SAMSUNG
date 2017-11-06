.class Lcom/samsung/android/app/music/service/PlayerSettingManager$1;
.super Ljava/lang/Object;
.source "PlayerSettingManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/PlayerSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/PlayerSettingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerSettingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/PlayerSettingManager;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerSettingManager$1;->this$0:Lcom/samsung/android/app/music/service/PlayerSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method
