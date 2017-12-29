.class public Lcom/samsung/android/sdk/bixby/data/ParamFilling;
.super Ljava/lang/Object;
.source "ParamFilling.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/ParamFilling;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field appName:Ljava/lang/String;

.field intent:Ljava/lang/String;

.field mScreenParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/ScreenParameter;",
            ">;"
        }
    .end annotation
.end field

.field screenStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field utterance:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ParamFilling$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/ParamFilling$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->screenStates:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->utterance:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->intent:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->appName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->screenStates:Ljava/util/List;

    .line 37
    sget-object v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "utterance"    # Ljava/lang/String;
    .param p2, "intent"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/ScreenParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p4, "screenStates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "screenParameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/ScreenParameter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->screenStates:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->utterance:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->intent:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->appName:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->screenStates:Ljava/util/List;

    .line 29
    iput-object p5, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    return v0
.end method

.method public getScreenParamMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby/data/ScreenParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/ScreenParameter;>;"
    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    return-object v1

    .line 89
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    .line 90
    .local v0, "p":Lcom/samsung/android/sdk/bixby/data/ScreenParameter;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getParameterName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getScreenParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/ScreenParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->utterance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->intent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->screenStates:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 107
    return-void
.end method
