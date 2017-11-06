.class public Lcom/mapps/android/share/ParcelHelper$Cache;
.super Ljava/util/LinkedHashMap;
.source "ParcelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/share/ParcelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ParcelHelper;


# direct methods
.method public constructor <init>(Lcom/mapps/android/share/ParcelHelper;)V
    .locals 3

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mapps/android/share/ParcelHelper$Cache;->this$0:Lcom/mapps/android/share/ParcelHelper;

    .line 138
    const/16 v0, 0x65

    const v1, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 139
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/mapps/android/share/ParcelHelper$Cache;->size()I

    move-result v0

    const/16 v1, 0x65

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
