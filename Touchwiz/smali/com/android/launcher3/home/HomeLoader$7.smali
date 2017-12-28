.class Lcom/android/launcher3/home/HomeLoader$7;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

.field final synthetic val$widget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$7;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$7;->val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$7;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$7;->val$widget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1334
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$7;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$7;->val$oldCallbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$7;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->access$5100(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 1335
    .local v0, "callbacks":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-eqz v0, :cond_0

    .line 1336
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$7;->val$widget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    .line 1338
    :cond_0
    return-void
.end method
