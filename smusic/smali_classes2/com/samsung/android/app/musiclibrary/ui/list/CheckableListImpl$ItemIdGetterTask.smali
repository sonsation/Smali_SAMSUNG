.class public Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;
.super Landroid/os/AsyncTask;
.source "CheckableListImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemIdGetterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[J>;"
    }
.end annotation


# instance fields
.field private final mCheckedItemCount:I

.field private final mCheckedItemPositions:Landroid/util/SparseBooleanArray;

.field private final mIdType:I
    .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
    .end annotation
.end field

.field private final mListener:Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

.field private mLoadingProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;ILandroid/util/SparseBooleanArray;ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
    .param p2, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
    .param p3, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p4, "checkedItemCount"    # I
    .param p5, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 170
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mCheckedItemPositions:Landroid/util/SparseBooleanArray;

    .line 171
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mCheckedItemCount:I

    .line 172
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mListener:Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    .line 173
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mIdType:I

    .line 174
    return-void
.end method

.method private hideLoading()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    .line 206
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    .line 210
    :cond_0
    return-void
.end method

.method private showLoading(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 195
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    .line 198
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 201
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 202
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->doInBackground([Ljava/lang/Void;)[J

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[J
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mIdType:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mCheckedItemPositions:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mCheckedItemCount:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;ILandroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 155
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->onPostExecute([J)V

    return-void
.end method

.method protected onPostExecute([J)V
    .locals 2
    .param p1, "result"    # [J

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mListener:Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->mIdType:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;->onResult(I[J)V

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->hideLoading()V

    .line 192
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->processing:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl$ItemIdGetterTask;->showLoading(I)V

    .line 181
    :cond_0
    return-void
.end method
