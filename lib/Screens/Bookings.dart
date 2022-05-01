import 'package:flutter/material.dart';
import 'package:ride_sharing_app/Screens/Rent.dart';
import 'package:ride_sharing_app/Screens/Welcome.dart';

class Bookings extends StatefulWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Rent()));
            },
          ),
          title: const Text('MY BOOKINGS',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          bottom: const TabBar(
            indicatorColor: Colors.orange,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [Tab(text: "RIDE"), Tab(text: "SHARE"), Tab(text: "RENT")],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                    'data:image/jpeg;base64,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'),
                const Text(
                    " Your email address was not confirmed yet. Please check your email."),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                    'data:image/jpeg;base64,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'),
                const Text(
                    "Share offers flexible transition from minutue to long destination."),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBEWEA8VFQ8PGBUYEBAYFRUYEREPERgRGBkaGhgYGBgcIC4lHB4rHxgYJzgmKy8xNTU1GiQ9QDszPy80NTEBDAwMBgYGEAYGEDEdFh0xMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMTExMf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABgcDBQgEAQL/xABMEAACAQMABgUEDgcHAwUAAAABAgADBBEFBhIhMVEHQWFxkRMigaEXMlJUcoKSk7GywcLR0hQ0U2J0lKIVFiMzQkNzY4OzJDWj4fH/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8AuWIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgN/ZEb4gIiICIiAiIgIiICIiAiIgIiICIiAiee9u6dKm1So6oijJZjgD8e6Vxp/pFqMWS0XZXh5V1Bc9qqdwHfk9ggWRc3VOmu1UqU0XmzKi+JmhutedGocfpO2eSU3cfKxs+uU5d3VSq5epUd2907s59GeA7JggW2ekix9xdHtFOn9rz0UOkHRzcalVPhUXP1NqU5EC/7DS9rW/ybii55K6lh3rxE2E5xBwQQSCOBG4g9hkp0HrxeUCFdjWp+5diagH7r8fHMC5Ymn0DrDbXSFqT+eANqm2FqL3jrHaMibiAiIgPREZiAiIgIiICIiAiIgIiICIiAiIgJ4dLaSpW1Fq1VsKo3DixY8FUdZM9jMACSQAASSdwA5mUnrlrC13cEqT5BCVpL1Hm5HNvUMdsDz6x6w1ryptOdlFJ2KQOUQcz7pubfQJpok61O1INYLXuAy0jvSnvV3HUzHiq9nE9g4hFtFaGubliKFF3wcM25aantc7gezjJhY9GVQgGtdIvNUpmoflsR9Blk29BERURFVVGFVQFUDkAJlgQRejK1xvuLrPYaIHhsTy3XRiuP8K8YHk9NXB9KkY8DPHrNrteU72vTotTVKb7IUorbRGNosTv454Y3SxdF3flbe3q4A8pSpvjiAXUHHrgU5pjVC+twWaltoOL0yaigc2XAYDtxjtmgBnR0hutWpNK4DVKIWnX3kgDZp1DyYDg37w9OeoKptLmpSdalN2V1OVZTgj8R2HcZb+p+tSXabD7K3CDz1HtWX3a9nMdXhKeuKDo7I6srKxVlIwwYdU/djd1KVVKtNtl0YMp7eR5gjII6wTA6HiarV/S6XVtTrLuzudc52ag9sp+kdhBm1gMxGYgIiICIiAiIgIiICIiAiIgIiIEN6SdLmlaCkpw9cle0UhjbPpyq/GMqKSvpHvjU0i6Z82kiIOW0RtsfFsfFkUgS3UHV0XNc1Ki5oUmGQeD1OIQ9g3E+gdcuKajVnRYtrOhSxhggZzzqNvb1nHcBNvARE+EgQKA05U2ry7bndVyO7bbHqlxakVdrRlmeVLZ+SxX7JSD1CzM54sxY97HP2y4ujapnRlIe5qV18XLfegSuIiBCOkPVwVqJuKa/wCLTBLgDe9Ecc82XeR2ZHLFTzo4jPdKI1p0YLe9uKQGED7Sf8b+coHdnHxYG76NdLGldmgx8yuMDkKyglT6Rle/ZluznW3rMjo6nzkdXX4SkEesToS1rq9Om6+1dEYdzAEfTAzYiMRAREQEREBERAREQETX3OmrSmSHu7dTyaqgbwzma6prpo1eN2h7kqP9CwJDEir6/wCjR/vVD3UKv2rPwekLR3u6/wA00CWxIgekXR3O4+aP4yWIwIBHAgEdx3wKD09VL3l4x67qv4bbADwAn3QFvt3lomMhrmiGH7m2C3qBmHSq4ubocriuPB2nt1UcLpCxJ98IPSx2R6yIF7xEQE8mlauxbXL+5oVW+ShP2T1yJ6/abSha1KWc1a6OiqDvCMNlnPIDO7mfTgKcUbh3S1+iqpmyrr7m6bwKU/wMqiWX0Sv/AId6vUHot2ZIcfdECxIiICVb0r24FzbP7ug6n4jZ+/LSlZ9LbjbsF5Jcn0E0wPqmBXkvLUmtt6NsjypbPyGKfdlGy7NQVI0XaDsqn0NUcj6YEjxEemICIiAiIgIieXSF2lGjUqucKiFjzwBwHaeHpgR/XDWxbNQihWruuVU52FThtPjfxBwOvB4SrNJ6curgny1xUYH/AEZ2KfdsDdMGk7969erWc+c7liOIA4Ko7AAB6JtdWdVq14XKOiIhAZ2Bbzjv2VA4kDBO8cRA0AE+S1rLo1tVwalau56wCtJPAAn+qbm31M0avC0U/DapU+sxgUhGRzEv2noCyX2tlaj/ALFP8JnXRtuOFvQHdSpj7IHPZYcx4y+9W7ryljZvn21vSyf3goDDxBns/QqP7Gl82n4TLTRVACqoA6gAAPQIFH65Wvk9I3i43NVLjtFQBz62PhNRb1yj03X2yOjr8JGDD1iT7pW0aQ9vcqNxU0nPJhlkPpBcegSvIHRNtXV6aOpyrIrKeasMg+uZpBejLTYeg1s7efSyU5tRJ6vgk47isnUDVaf0zTtbdqrnJ4ImcM7ngo+09QBMpDSV/UuKz1qrZZjv9yB1Ko6lAkw6T7W4/SUqMrtQ2FVCN6o/+sNjgTuOesAcph1V1FqV9mrcB6dHcVT2tVx9xe3ierG4wNFoDV64u32aa4QHz6jA7Cfmb90erjLg1f0HStKPk6eTk7TscbTNjGTyG7cOrxM2FpapTRUpoqoowqqMACZ4CIiAlOdJF6KmkGUHdSppT7Nve7fXA+LLQ07pVLa2qVmx5owq+6qH2qjvPqyZQ9eszu7u2Xd2ZjzZjknxMD8Ey/dAWhpWdrTPtkoUw3w9kbXrzKZ1V0abi+tqeMrth35CmnnNnvwF+MJe8D5g84n3f2RAREQEREBK96U9LbNOlbKd74qVPgKcKvpYE/ElhShNZNJfpF5cVs5VnIp/8a+aniBn0mBr6NJndEUZdmVVHNmOAPEy+NAaKS2tqVFceavnN7qod7N6TnuGBK16NNF+UvGqsPNoJtDl5R8qvgA57wJbsBERAREQEREDX6b0YlxbVaL8HXceOy43q3oIBlD3lrUpVHpuuy6MVYdo5cx1g9YInREhevmqxuE8vRUeXRcMo3eUpjq+EOrnw5YCrbC9qUaqVab7Lo2VPVyII6wRkEcjLq1b1io3dLaUhai48pTJ85TzHNT1H7d0o4ggkEEEEggjBBHEETNZ3dSk61Kbujr7VlOD3do7DuMDoeJXmgukZGCpdIUb9qilqZ7WXivoz6JNbHSttWGaVxSccldSfSvEemB7oiYbi4RF2ndFXrZmVV8TAzTz3l3TpU2eo6qijLMTgD8T2SM6Y19s6QIpsa79QTdTB7ah3Y7sytdPaw3N24NVsKDlaa5WmvbjrbtO/u4QPVrdrG15WGNpaKEimh4nPF2/ePqHpzHokx1F1UNy616q/wDp0bcCP81x/pH7gPE9fDngJT0baDNG3au64qVsbIPFaI3r3bXtu7Zk1nwDE+wG+I9EQE0mt989CwualM4cKoU9YLsqbQ7RtZ9E3c1Gs+jmuLK4ooQGZV2c7gXRgygnqBKgZ7YFJNpK4JJNzckniTWqEn1z9UdLXSMGS6uAwO4+VqHxBOCOwz3NqnpEEg2Vb0bDDxBwY/unpH3lW8F/GBPLjWoVNC1q20BW8mKTgbitZ/MyB1Aglh/9SqBM9zbPTd0dSrqQGXIJB44ODxmCBcPRtYeTsFcjzqru557I8xfRhc/GkulM0der1KNOlTFui00RFxTLNsqAASWYjO7lPJX1x0k/G8cfBWmn1VzAvGJQNXTd4/try6P/AH6gHgDieSpc1G9tUqN8Ko7fSYHQ7MBxIHecTGbmmP8AcT5S/jOdtgch4CNgch4QOiP0ul+1p/LX8YF1T/a0/lr+M532RyHhGyOQ8IHRa1lPBlPcwMyTnDYHIeAmeyuqlF1ek7IynKsu7xHAjsMC19btS6dxtVaJCV+vPtKnwscG/e8eYqu/sKtGoUq03Rx/pYYyOangw7Ruln6ta+0awVLgpSq7ht5xRc959qew7u3qkqv9H0K6bFWkjrxAYZx2g8Qe0QOfJ9xLN0p0aU2Ja3uHT9xx5RO4MMMB37Ujd1qFpFM7NKm45pVX6H2TAjqXlYDArVgOQqVAPDMwOxJySSeZJY+Jm6OqekeH6FW/oP3p6KGpOkmP6qVHN6lJR4bWfVAjk/SgkgAEkkAADJJPAAdcn2j+jOqSDXuUQda01Lt8psAeBk10Nq1aWuDSpAvjHlG/xKh+MeHcMCBB9VtQncrVu1KJuK0d4qN8P3K9nHu67OpUlVQqqqqAAAAFUAcAAOAmSICIiAzEZiAiIgJDtftZTbUhSpNivUU7+unT4F/hHeB6T1b5bWqqquzHCqrMx6goGSfCUFpnSLXFzWrNnLuSo9yg3KvoUD1wPGTnJJPEkk7yTzM/MRAREQEREBERAREQEREBN1obWe8tsCnVyg/23G3TxyA4r8UiaWIFn6O6S6RAFe3dD1tTIqJ34OCPXN/ba5aNcbrtF7HV6X1wBKRiBfY1isMbr+z/AJil+aeevrXo5ASb23PwG8qfBMkyjIgdF0qqsiurAqwDKw3gqRkEdmJkkE6L9LF7epbsctSIKc/JMTu9DZ9DCTuAiIgIiIDMREBERAjPSDdlNG3GDgvsUx3Ow2v6Q0paW50p/qFP+Kp/UqSo4Et1Q1QW8pVajV2QJU8mAqBiSFViSSeHnD1yQ+xhS9+Vfm0/Gejoo/Urj+Lb/wAdOTmBX3sYUvflX5tPxkW1s1UezNNg+3Sc7IbZ2WV8Z2WGesAkHsPDruqaTXGyFXR92uMkUmdee1T88fVx6YFFzb6s6H/SrlaJqbAKOxbG0cL1KOs7/pmomy0Bf/o93bVs4CVF2/8AjbzX/pJgTz2MKXvyr82n4x7GFL35V+bT8ZYHbPsCvvYwpe/KvzafjHsYUvflX5tPxlgxAr72MKXvyr82n4zW6f1BW3ta1ZbpmKAMVZFAIyAQCDuO/dLTkG6UtIbFrSog76tTLD/p08E/1FIFUzLQou7oiqWZ2VVUcSzHAExSX9GlmH0htkbqVF2HwzhB6mY+iBurXoyXYXyl2wfA2giAoDyBJye/d3TL7GFL35V+bT8ZYMQK+PRjS9+Vc/8AGh+2Vxd0ClWqhIJSo6EjcCUYqSPCdETn7Tf63efxdz/5Ggbfo/uymkrffucVKbdzLtD+pVl1ShtVf/cLH+JpfTL5gIiICIiAxEYiAiIgRLpMTOjXPua1E+LbP3pTsvPXO28po28UDOKRcd9Mhx9WUZA2OjNN3VuHFC4ZAxBYAIykjdnDA4PbPd/fLSXv1/kUfyTQRA3/APfLSXv1/kUfyTFca16QdGR7tyrKVYbNNcqdxGVUGaWICIiBeep2kPL2Fs5OWCbD89tPNJPacA+mbyc8W15WQEJWrICckJUemCeZ2SMzN/a9378u/wCYrfmgdAxOfv7Xu/fl3/MVvzR/a9378u/5it+aB0DKb6RtIeU0g6g+bSRaY5bXtnPflsfFmi/te79+Xf8AMVvzTxkkkkkkk5JO8k8zA/M9mjdJV7dy1GqyMVKkjZOV44IYEHhPHEDf/wB8tJe/X+RR/JH98tJe/X+RR/JNBEDfnXLSfv1/m6I+5NE7Ekkkkkkkk5JJ3kk85+YgbzUqntaSsh/1C3yUZvsl5ynujO22tIq2N1OjVfPVk4Qepz4S4YCIiAiIgfMdpn2PTEBERA/FRQysCMgggjsO4ic/6VsGoXFai2co7L3rxVvSpB9M6DkL161TNzitR2fLqMMp80VE6hnqYdWeOccoFSRM1zbPTdkqI6OOKspRvA9XbMMBERAREQEREBERAREQEREBERAREkWreqdzdMp2GShkbVVhjK8qYPtj28B6oEw6LNHFbetXYf5jBU7adPIJHexYfFk9nntLZKdNKaKFRUVVA6lAwP8A9nogIiICIiA3xG+ICIiAiIgVR0rfrlv/AAq/XeQeTrpWQ/pdsxG422AerIdsj+oeMgsAx3E9hlnexlRKgi7rDIB3ojfRiViykggDedwHaZ0ZSHmrnkPogVy3Reeq/Hpts+vykxN0YVOq9pnvosPvmWdECrT0ZXHVdUD8RxMZ6NLvquLb/wCQfdlrRAqg9Gl5+3tflVfyQOjS8/b2vjV/LLXiBVa9Gd113Nt4VD9kyL0Y1uu8pDups32iWhECtF6L3679B3Wxb74man0YJ/qvmPwaAT6XMsWIFK656uU7J7dUqu+2tQnaCjGyVAxgfvSNSw+lpTt2JwcbNcZ6s5pyvIAzoLQ36ra/w9H6izn5uBnQWiVItrcEEEUKQI6wQoyIHsiIgIiICIiA9ET5nvn2AiIgIiIGr01oS3uqexWTIByrAlXU81P2cJHvY1sv21585S/JJrECK6K1EsaFRagFV2Ugr5R1ZVYcGwqgE9+ZKoiAiIgIiICIiAiIgIiIGv0vomhc0/J1k2lyCDkqwYcGVhwO8yNexrY/tbz5dL8kmsQIlo7UGxpVFf8AxqhUghajqyBhwJCqM9xyJLYiAiIgIiICIiAzEZiA6464iA5QYiAMGIgBAiIARziIHwcTPvXEQHXHKIgDBiIAx1REAIERAc45xEB1x1xEBygxEAYMRA/MRED/2Q=='),
                const Text("Rent offers the largest primium cars."),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
