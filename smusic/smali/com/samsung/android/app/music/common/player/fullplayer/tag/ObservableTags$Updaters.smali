.class abstract enum Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;
.super Ljava/lang/Enum;
.source "ObservableTags.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Updaters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;",
        ">;",
        "Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

.field public static final enum Connection:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

.field public static final enum Lyrics:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

.field public static final enum Private:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

.field public static final enum Stream:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

.field static TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

.field public static final enum Upscaler:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$1;

    const-string v1, "Private"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Private:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    .line 228
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$2;

    const-string v1, "Upscaler"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Upscaler:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    .line 244
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;

    const-string v1, "Stream"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Stream:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    .line 306
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$4;

    const-string v1, "Lyrics"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Lyrics:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    .line 324
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$5;

    const-string v1, "Connection"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Connection:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    .line 214
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    sget-object v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Private:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Upscaler:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Stream:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Lyrics:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->Connection:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->$VALUES:[Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$1;

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    const-class v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->$VALUES:[Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;

    return-object v0
.end method


# virtual methods
.method addLeadingSpace(Landroid/view/View;)V
    .locals 5
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 356
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04d1

    .line 357
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 358
    .local v1, "leadingPadding":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 358
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 360
    return-void
.end method

.method addSpace(Landroid/view/View;Landroid/text/SpannableStringBuilder;I)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "index"    # I

    .prologue
    .line 347
    if-nez p3, :cond_0

    .line 348
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->addLeadingSpace(Landroid/view/View;)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Updaters;->TAGS:Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$SpannedTags;->SEPARATOR_BUILDER:Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagBuilder;->build()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method removeLeadingSpace(Landroid/view/View;)V
    .locals 4
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 363
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 365
    return-void
.end method
