.class Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;
.super Ljava/lang/Object;
.source "PreferenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/PreferenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrefModel"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->name:Ljava/lang/String;

    .line 258
    iput-object p2, p0, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->key:Ljava/lang/String;

    .line 259
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->name:Ljava/lang/String;

    return-object v0
.end method
