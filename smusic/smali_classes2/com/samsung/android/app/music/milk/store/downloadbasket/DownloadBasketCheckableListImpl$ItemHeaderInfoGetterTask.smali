.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;
.super Landroid/os/AsyncTask;
.source "DownloadBasketCheckableListImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemHeaderInfoGetterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCheckedItemPositions:Landroid/util/SparseBooleanArray;

.field private mHeaderTypes:[I

.field private final mListener:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;


# direct methods
.method public varargs constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;Landroid/util/SparseBooleanArray;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;
    .param p2, "l"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;
    .param p3, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p4, "headerTypes"    # [I

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;->mListener:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;

    .line 154
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;->mCheckedItemPositions:Landroid/util/SparseBooleanArray;

    .line 155
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;->mHeaderTypes:[I

    .line 156
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;->mCheckedItemPositions:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;->mHeaderTypes:[I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;Landroid/util/SparseBooleanArray;[I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$ItemHeaderInfoGetterTask;->mListener:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;->result([Ljava/lang/String;)V

    .line 166
    return-void
.end method
