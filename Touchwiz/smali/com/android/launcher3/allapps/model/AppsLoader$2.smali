.class Lcom/android/launcher3/allapps/model/AppsLoader$2;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->startAppsLoaderTask(IZZLcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$bindFinished:Z

.field final synthetic val$needDBUpdate:Z

.field final synthetic val$startPage:I

.field final synthetic val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$startPage:I

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    iput-boolean p4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$bindFinished:Z

    iput-boolean p5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$needDBUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 170
    const-string v3, "AppsLoader"

    const-string v4, "startAppsLoaderTask start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/controller/Normalizer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    .line 172
    invoke-static {v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$100(Lcom/android/launcher3/allapps/model/AppsLoader;)I

    move-result v6

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$200()I

    move-result v7

    .line 171
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$002(Lcom/android/launcher3/allapps/model/AppsLoader;I)I

    .line 173
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$000(Lcom/android/launcher3/allapps/model/AppsLoader;)I

    move-result v4

    new-array v4, v4, [Z

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$302(Lcom/android/launcher3/allapps/model/AppsLoader;[Z)[Z

    .line 175
    iget v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$startPage:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$400(Lcom/android/launcher3/allapps/model/AppsLoader;)[Z

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_3

    iget v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$startPage:I

    .line 176
    .local v2, "startIndex":I
    :goto_0
    move v0, v2

    .line 178
    .local v0, "index":I
    const/4 v1, 0x0

    .line 179
    .local v1, "mAllPageLoaded":Z
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$500(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 180
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$600(Lcom/android/launcher3/allapps/model/AppsLoader;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1

    .line 181
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->loadPageItems(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->bindPageItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 183
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 184
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-static {v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$700(Lcom/android/launcher3/allapps/model/AppsLoader;)[Z

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 185
    const/4 v0, 0x0

    .line 187
    :cond_2
    if-ne v0, v2, :cond_0

    .line 188
    const/4 v1, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "index":I
    .end local v1    # "mAllPageLoaded":Z
    .end local v2    # "startIndex":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 192
    .restart local v0    # "index":I
    .restart local v1    # "mAllPageLoaded":Z
    .restart local v2    # "startIndex":I
    :cond_4
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$bindFinished:Z

    if-eqz v3, :cond_5

    .line 193
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->finishBind(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 196
    :cond_5
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->val$needDBUpdate:Z

    if-eqz v3, :cond_6

    .line 197
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$2;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateDirtyItems()V

    .line 199
    :cond_6
    const-string v3, "AppsLoader"

    const-string v4, "startAppsLoaderTask end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method
