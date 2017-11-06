.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;
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
    name = "SetSelection"
.end annotation


# instance fields
.field private final animation:Z

.field private position:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;IZ)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "animation"    # Z

    .prologue
    .line 702
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    .line 708
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->animation:Z

    .line 709
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 713
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$800(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    if-ne v0, v1, :cond_0

    .line 741
    :goto_0
    return-void

    .line 719
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    if-gez v0, :cond_1

    .line 720
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 723
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->animationFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->isFlinging()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->animation:Z

    if-nez v0, :cond_3

    .line 727
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->stopAnimation()V

    .line 737
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->animation:Z

    if-nez v0, :cond_4

    .line 738
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$802(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;I)I

    .line 740
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->position:I

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;->animation:Z

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->setSelection(IZ)V

    goto :goto_0
.end method
