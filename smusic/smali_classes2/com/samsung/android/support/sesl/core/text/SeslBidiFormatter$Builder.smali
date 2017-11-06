.class public final Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;
.super Ljava/lang/Object;
.source "SeslBidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristicCompat:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;->access$000(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->initialize(Z)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;->access$000(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->initialize(Z)V

    .line 159
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "rtlContext"    # Z

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->initialize(Z)V

    .line 150
    return-void
.end method

.method private static getDefaultInstanceFromContext(Z)Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;
    .locals 1
    .param p0, "isRtlContext"    # Z

    .prologue
    .line 198
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;->access$200()Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;->access$300()Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;

    move-result-object v0

    goto :goto_0
.end method

.method private initialize(Z)V
    .locals 1
    .param p1, "isRtlContext"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mIsRtlContext:Z

    .line 168
    invoke-static {}, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;->access$100()Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mTextDirectionHeuristicCompat:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    .line 169
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mFlags:I

    .line 170
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;
    .locals 5

    .prologue
    .line 205
    iget v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mFlags:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mTextDirectionHeuristicCompat:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    .line 206
    invoke-static {}, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;->access$100()Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 207
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->getDefaultInstanceFromContext(Z)Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mIsRtlContext:Z

    iget v2, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mFlags:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mTextDirectionHeuristicCompat:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter;-><init>(ZILcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$1;)V

    goto :goto_0
.end method

.method public setTextDirectionHeuristic(Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;)Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;
    .locals 0
    .param p1, "heuristic"    # Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mTextDirectionHeuristicCompat:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;

    .line 194
    return-object p0
.end method

.method public stereoReset(Z)Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;
    .locals 1
    .param p1, "stereoReset"    # Z

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mFlags:I

    .line 182
    :goto_0
    return-object p0

    .line 180
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslBidiFormatter$Builder;->mFlags:I

    goto :goto_0
.end method
