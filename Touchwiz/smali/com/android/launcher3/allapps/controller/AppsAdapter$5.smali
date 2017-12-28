.class Lcom/android/launcher3/allapps/controller/AppsAdapter$5;
.super Ljava/lang/Object;
.source "AppsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsAdapter;->removeAllItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsAdapter;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$5;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 268
    const-string v0, "AppsAdapter"

    const-string v1, "cancel stub and reset data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$5;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->access$200(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$5;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->access$300(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V

    .line 272
    return-void
.end method
