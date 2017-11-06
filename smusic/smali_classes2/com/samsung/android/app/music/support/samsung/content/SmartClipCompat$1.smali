.class final Lcom/samsung/android/app/music/support/samsung/content/SmartClipCompat$1;
.super Ljava/lang/Object;
.source "SmartClipCompat.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/samsung/content/SmartClipCompat;->setDataExtractionListener(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/content/SmartClipCompat$1;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/support/samsung/content/SmartClipCompat$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "semSmartClipCroppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p3, "semSmartClipDataElement"    # Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    .prologue
    .line 27
    invoke-interface {p2, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->intersects(Landroid/view/View;)Z

    move-result v0

    .line 28
    .local v0, "matched":Z
    if-eqz v0, :cond_0

    .line 30
    invoke-static {p1, p2, p3}, Lcom/samsung/android/content/smartclip/SemSmartClipViewHelper;->extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    .line 32
    new-instance v1, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/samsung/android/app/music/support/samsung/content/SmartClipCompat$1;->val$title:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 34
    new-instance v1, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string v2, "file_path_audio"

    iget-object v3, p0, Lcom/samsung/android/app/music/support/samsung/content/SmartClipCompat$1;->val$filePath:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 36
    const/4 v1, 0x1

    .line 38
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x100

    goto :goto_0
.end method
