.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$ReloadItem;
.super Ljava/lang/Object;
.source "GLHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadItem"
.end annotation


# instance fields
.field private final adapterIndex:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;I)V
    .locals 0
    .param p2, "adapterIndex"    # I

    .prologue
    .line 680
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$ReloadItem;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$ReloadItem;->adapterIndex:I

    .line 685
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$ReloadItem;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$ReloadItem;->adapterIndex:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->reloadItem(I)V

    .line 694
    return-void
.end method
