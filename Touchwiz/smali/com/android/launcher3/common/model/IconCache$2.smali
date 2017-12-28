.class Lcom/android/launcher3/common/model/IconCache$2;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/IconCache;->clearDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/IconCache;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/IconCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/android/launcher3/common/model/IconCache$2;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1190
    const-string v0, "Launcher.IconCache"

    const-string v1, "mIconDb is cleared running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache$2;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v0}, Lcom/android/launcher3/common/model/IconCache;->access$1000(Lcom/android/launcher3/common/model/IconCache;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/common/model/IconCache;->access$900()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1192
    iget-object v0, p0, Lcom/android/launcher3/common/model/IconCache$2;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v0}, Lcom/android/launcher3/common/model/IconCache;->access$300(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/common/model/IconCache$IconDB;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/model/IconCache$2;->this$0:Lcom/android/launcher3/common/model/IconCache;

    invoke-static {v1}, Lcom/android/launcher3/common/model/IconCache;->access$300(Lcom/android/launcher3/common/model/IconCache;)Lcom/android/launcher3/common/model/IconCache$IconDB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/IconCache$IconDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/IconCache$IconDB;->access$1100(Lcom/android/launcher3/common/model/IconCache$IconDB;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1193
    return-void
.end method
