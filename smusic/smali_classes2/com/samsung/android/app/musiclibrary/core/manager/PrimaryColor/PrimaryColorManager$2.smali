.class Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager$2;
.super Ljava/lang/Object;
.source "PrimaryColorManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTintInfo(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 4
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "albumId"    # J
    .param p4, "tintInfo"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    iget v1, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->access$002(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;I)I

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;)Landroid/util/LruCache;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v2, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    iget v1, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;I)V

    .line 121
    return-void
.end method
