.class Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "SeslProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)V
    .locals 0

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;

    .prologue
    .line 1326
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1328
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    monitor-enter v9

    .line 1329
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1330
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;

    .line 1332
    .local v8, "rd":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    iget v1, v8, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->id:I

    iget v2, v8, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->progress:I

    iget-boolean v3, v8, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->fromUser:Z

    const/4 v4, 0x1

    iget-boolean v5, v8, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->animate:Z

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;IIZZZ)V

    .line 1333
    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->recycle()V

    .line 1330
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1335
    .end local v8    # "rd":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1336
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->access$302(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;Z)Z

    .line 1337
    monitor-exit v9

    .line 1338
    return-void

    .line 1337
    .end local v6    # "count":I
    .end local v7    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
