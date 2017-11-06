.class Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$FirstStrong;
.super Ljava/lang/Object;
.source "SeslTextDirectionHeuristicsCompat.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstStrong"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$FirstStrong;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$FirstStrong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 4
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 182
    const/4 v2, 0x2

    .line 183
    .local v2, "result":I
    move v1, p2

    .local v1, "i":I
    add-int v0, p2, p3

    .local v0, "e":I
    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 184
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;->isRtlTextOrFormat(I)I

    move-result v2

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return v2
.end method
