.class Lcom/android/launcher3/allapps/model/AppsLoader$28;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->dumpTopLevelItemsCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 2152
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$28;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2155
    const-string v0, "AppsLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump topLevelItemsInApps size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$28;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    return-void
.end method
