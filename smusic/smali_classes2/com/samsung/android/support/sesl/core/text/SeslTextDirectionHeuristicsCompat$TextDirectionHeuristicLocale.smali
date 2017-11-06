.class Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;
.super Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.source "SeslTextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicLocale"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;->INSTANCE:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;-><init>(Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V

    .line 245
    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 250
    .local v0, "dir":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
