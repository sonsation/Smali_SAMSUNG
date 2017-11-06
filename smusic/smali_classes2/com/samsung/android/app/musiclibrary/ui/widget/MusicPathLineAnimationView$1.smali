.class Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;
.super Ljava/lang/Object;
.source "MusicPathLineAnimationView.java"

# interfaces
.implements Lcom/altamirasoft/path_animation/PathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineCapStyle(I)Landroid/graphics/Paint$Cap;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->access$400(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[Landroid/graphics/Paint$Cap;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineColor(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->access$300(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public getLineWidth(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->access$200(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method
