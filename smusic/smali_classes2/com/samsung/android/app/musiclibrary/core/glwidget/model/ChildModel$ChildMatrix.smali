.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator$BaseMatrix;
.source "ChildModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChildMatrix"
.end annotation


# instance fields
.field protected mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 0
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator$BaseMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    .line 15
    return-void
.end method


# virtual methods
.method setParent(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 0
    .param p1, "parent"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel$ChildMatrix;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .line 19
    return-void
.end method
