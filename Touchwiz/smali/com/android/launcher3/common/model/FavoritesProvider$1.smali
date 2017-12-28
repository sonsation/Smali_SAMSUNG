.class Lcom/android/launcher3/common/model/FavoritesProvider$1;
.super Ljava/lang/Object;
.source "FavoritesProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesProvider;->deleteWidgetHost(Lcom/android/launcher3/LauncherProviderChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesProvider;

.field final synthetic val$listener:Lcom/android/launcher3/LauncherProviderChangeListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesProvider;Lcom/android/launcher3/LauncherProviderChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/FavoritesProvider;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesProvider$1;->this$0:Lcom/android/launcher3/common/model/FavoritesProvider;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesProvider$1;->val$listener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider$1;->val$listener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider$1;->val$listener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherProviderChangeListener;->onAppWidgetHostReset()V

    .line 1106
    :cond_0
    return-void
.end method
