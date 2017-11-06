.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;
.super Ljava/lang/Object;
.source "ModelsList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<T",
        "ListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .prologue
    .line 83
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;"
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListModel;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;->next()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 96
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;, "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is readonly iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
