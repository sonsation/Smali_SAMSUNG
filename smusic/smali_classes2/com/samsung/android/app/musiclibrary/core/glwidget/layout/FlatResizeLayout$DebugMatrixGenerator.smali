.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$DebugMatrixGenerator;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;
.source "FlatResizeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugMatrixGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 0
    .param p2, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$DebugMatrixGenerator;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    .line 1076
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    .line 1077
    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$DebugMatrixGenerator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getMatrix()[F

    move-result-object v0

    return-object v0
.end method
