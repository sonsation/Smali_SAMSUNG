.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;
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
    name = "SetAdapter"
.end annotation


# instance fields
.field private final adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

.field private final adapterPosition:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V
    .locals 0
    .param p2, "adapter"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;
    .param p3, "adapterPosition"    # I

    .prologue
    .line 749
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 756
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapterPosition:I

    .line 757
    return-void
.end method

.method private hasSameCursor(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;)Z
    .locals 4
    .param p1, "a1"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;
    .param p2, "a2"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .prologue
    .line 785
    instance-of v2, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    if-eqz v2, :cond_0

    instance-of v2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 786
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    .local v0, "c1":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;
    move-object v1, p2

    .line 787
    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    .line 788
    .local v1, "c2":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 790
    .end local v0    # "c1":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;
    .end local v1    # "c2":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 766
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->hasSameCursor(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 767
    :cond_0
    const-string v2, "SMUSIC-GLHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetAdapter mAdapter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 769
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;

    .line 771
    .local v1, "ca":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$902(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 772
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 773
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 774
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 776
    :cond_1
    const-string v2, "SMUSIC-GLHolder"

    const-string v3, "SetAdapter close cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "ca":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$902(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .line 780
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;->adapterPosition:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    .line 781
    return-void
.end method
