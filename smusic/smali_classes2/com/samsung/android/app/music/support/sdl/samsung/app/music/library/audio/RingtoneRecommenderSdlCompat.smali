.class public Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;
.super Ljava/lang/Object;
.source "RingtoneRecommenderSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;,
        Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field private static final HIGHLIGHT_OFFSET:Ljava/lang/String; = "highlight_offset"

.field public static final OPEN_ERR_NOT_ENOUGH_MEMORY:I = -0x2

.field public static final OPEN_ERR_NOT_OPEN_FILE:I = -0x7

.field public static final OPEN_ERR_UNSUPPORT_FILE_TYPE:I = -0x3

.field public static final OPEN_SUCCESS:I = 0x0

.field public static final RESULT_EXTRACT:I = 0x5

.field public static final RESULT_QUIT:I = 0x6

.field public static final SMAT_MODE_FAST:I = 0x0

.field public static final SMAT_MODE_FULL:I = 0x1


# instance fields
.field private mIsOpen:Z

.field private mListener:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;

.field private final mRecommender:Lcom/samsung/audio/Smat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mIsOpen:Z

    .line 139
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mRecommender:Lcom/samsung/audio/Smat;

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mIsOpen:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;)Lcom/samsung/audio/Smat;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mRecommender:Lcom/samsung/audio/Smat;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;

    return-object v0
.end method

.method private extract()V
    .locals 4

    .prologue
    .line 218
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mRecommender:Lcom/samsung/audio/Smat;

    invoke-virtual {v1}, Lcom/samsung/audio/Smat;->extract()I

    move-result v0

    .line 219
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extract() result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-nez v0, :cond_0

    .line 221
    new-instance v1, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;

    const-string v2, "Recommender thread"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;->start()V

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 207
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() is opened ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mRecommender:Lcom/samsung/audio/Smat;

    invoke-virtual {v0}, Lcom/samsung/audio/Smat;->deinit()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mIsOpen:Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;

    .line 212
    :cond_0
    return-void
.end method

.method public doExtract(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mIsOpen:Z

    .line 199
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->extract()V

    .line 201
    return-void
.end method

.method public isOpen()Z
    .locals 3

    .prologue
    .line 148
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOpen() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mIsOpen:Z

    return v0
.end method

.method public open(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->open(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;I)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mRecommender:Lcom/samsung/audio/Smat;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/audio/Smat;->init(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open() result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v0
.end method

.method public quit()Z
    .locals 3

    .prologue
    .line 273
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quit() is opened : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->mRecommender:Lcom/samsung/audio/Smat;

    invoke-virtual {v0}, Lcom/samsung/audio/Smat;->quit()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method